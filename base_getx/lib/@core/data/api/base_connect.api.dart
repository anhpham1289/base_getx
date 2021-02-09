import 'package:base_getx/@core/data/local/storage/data.storage.dart';
import 'package:base_getx/@core/data/repo/response/base.response.dart';
import 'package:base_getx/@share/constants/value.constant.dart';
import 'package:base_getx/@share/utils/util.dart';
import 'package:get/get.dart';
import 'package:global_configuration/global_configuration.dart';

class BaseConnect extends GetConnect {
  @override
  void onInit() {
    httpClient
      ..baseUrl = GlobalConfiguration().get(BASE_URL)
      ..maxAuthRetries = MAX_AUTH_RETRIES
      ..timeout = Duration(seconds: MAX_TIME_OUT)
      ..defaultContentType = CONTENT_TYPE
      ..addAuthenticator((request) {
        var token = Get.find<DataStorage>().getToken();
        if (token != null) request.headers[AUTHORIZATION] = "$BEARER $token";
        Get.log('[HEADER] : ${request.headers.toString()}');
        return request;
      })
      ..addRequestModifier((request) {
        Get.log('[URL] : ${request.url}');
        return request;
      });
  }

  Future<BaseResponse> getResponse(String url, {dynamic query}) async {
    Get.log('[QUERY] : $query');
    var response = await get(url,
        query: query, decoder: (map) => BaseResponse.fromMap(map));
    if (response.isOk) {
      Get.log('[RESPONSE] : ${response.body.toMap()}');
      return response.body;
    } else {
      dispose();
      hideLoading();
      return BaseResponse(
          success: false,
          message: response.statusText,
          code: response.status.code);
    }
  }

  Future<BaseResponse> postRequest(String url, {dynamic body}) async {
    Get.log('[BODY] : ${body.toString()}');
    var response =
        await post(url, body, decoder: (map) => BaseResponse.fromMap(map));
    if (response.isOk) {
      Get.log('[RESPONSE] : ${response.body.toMap()}');
      return response.body;
    } else {
      dispose();
      hideLoading();
      return BaseResponse(
          success: false,
          message: response.statusText,
          code: response.status.code);
    }
  }
}
