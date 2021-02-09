import 'package:base_getx/@core/data/api/base_connect.api.dart';
import 'package:base_getx/@core/data/repo/response/base.response.dart';

class UserApi extends BaseConnect {
  Future<BaseResponse> loginManual(Map<String, dynamic> map) async {
    return await postRequest('user/login', body: map);
  }

  Future<BaseResponse> getMyPage() async {
    return await getResponse('user/my_page');
  }

// Future<BaseResponse> postImages(List<String> image) {
//   final form = FormData({
//     'file': MultipartFile(image, filename: 'avatar.png'),
//     'otherFile': MultipartFile(image, filename: 'cover.png'),
//   });
//   return postRequest('abc/', body: form);
// }
}
