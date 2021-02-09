import 'package:base_getx/@core/data/api/user.api.dart';
import 'package:base_getx/@core/data/repo/model/loginInfo.model.dart';
import 'package:base_getx/@core/data/repo/model/userInfo.model.dart';

class UserRepo {
  final UserApi userApi;

  UserRepo(this.userApi);

  Future<LoginInfoModel> loginManual(
      {String email, String password, String fcmToken}) async {
    var res = await userApi.loginManual(
        {'email': email, 'password': password, 'fcm_token': fcmToken});
    return res.success ? LoginInfoModel.fromMap(res.data) : null;
  }

  Future<UserInfoModel> getMyPage() async {
    var res = await userApi.getMyPage();
    return res.success ? UserInfoModel.fromMap(res.data) : null;
  }
}
