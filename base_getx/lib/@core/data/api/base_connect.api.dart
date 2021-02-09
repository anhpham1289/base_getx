import 'package:base_getx/@core/data/local/storage/data.storage.dart';
import 'package:base_getx/@share/constants/value.constant.dart';
import 'package:get/get.dart';

class BaseConnect extends GetConnect {
  @override
  void onInit() {
    httpClient
      ..baseUrl = BASE_URL
      ..maxAuthRetries = MAX_AUTH_RETRIES
      ..timeout = Duration(seconds: MAX_TIME_OUT)
      ..defaultContentType = CONTENT_TYPE
      ..addAuthenticator((request) {
        var token = Get.find<DataStorage>().getToken();
        request.headers[AUTHORIZATION] = "$BEARER $token";
        Get.log('[HEADER] : ${request.headers}');
        return request;
      })
      ..addRequestModifier((request) {
        Get.log('[URL] : ${request.url}');
        // request.headers['apikey'] = 'APIkEY';
        return request;
      });
  }

  Future<dynamic> getResponse(
    String url, {
    Map<String, dynamic> query,
    Decoder decoder,
  }) async {
    Get.log('[BODY] : $query');
    var response = await this.get(url, decoder: decoder, query: query);
    if (response.hasError)
      return Future.error('error');
    else if (response.unauthorized) {
      Get.log('response.unauthorized');
      return Future.error('response.unauthorized');
    } else
      return response.body;
  }

  Future<dynamic> postResquest() {}
}
