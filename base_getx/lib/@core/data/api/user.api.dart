import 'package:base_getx/@core/data/api/base_connect.api.dart';
import 'package:get/get.dart';

class UserApi extends BaseConnect {
  var url = 'https://randomuser.me/api/?results=10';

  // // Get request
  // Future<Response> getUser(int id) => get('http://youapi/users/$id');
  // // Post request
  // Future<Response> postUser(Map data) => post('http://youapi/users', body: data);
  // // Post request with File
  // Future<Response<CasesModel>> postCases(List<int> image) {
  //   final form = FormData({
  //     'file': MultipartFile(image, filename: 'avatar.png'),
  //     'otherFile': MultipartFile(image, filename: 'cover.png'),
  //   });
  //   return post('http://youapi/users/upload', form);
  // }

  getList() async {
    var res = await getResponse(url);
    // Get.log(res.toString());
    return res;
  }
}
