import 'package:base_getx/@core/data/repo/user.repo.dart';
import 'package:base_getx/@share/utils/util.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var userName = ''.obs;

  var _userRepo = Get.find<UserRepo>();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
    _getMyPage();
  }

  _getMyPage() async {
    showLoading();
    var res = await _userRepo.getMyPage();
    hideLoading();
    userName.value = res.name;
  }
}
