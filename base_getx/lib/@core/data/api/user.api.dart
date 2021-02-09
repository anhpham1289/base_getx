import 'package:base_getx/@core/data/api/base_connect.api.dart';
import 'package:base_getx/@core/data/repo/response/base.response.dart';

class UserApi extends BaseConnect {
  Future<BaseResponse> loginManual(Map<String, dynamic> map) async {
    return await postRequest('user/login', body: map);
  }

// Future<Response<CasesModel>> postCases(List<int> image) {
//   final form = FormData({
//     'file': MultipartFile(image, filename: 'avatar.png'),
//     'otherFile': MultipartFile(image, filename: 'cover.png'),
//   });
//   return post('http://youapi/users/upload', form);
// }
}
