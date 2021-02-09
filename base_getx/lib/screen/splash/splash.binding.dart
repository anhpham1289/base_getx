import 'package:base_getx/@core/data/api/user.api.dart';
import 'package:base_getx/@core/data/local/storage/data.storage.dart';
import 'package:base_getx/@core/data/repo/user.repo.dart';
import 'package:base_getx/screen/splash/splash.controller.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
    Get.lazyPut(() => DataStorage());
    Get.lazyPut(() => UserApi());
    Get.lazyPut(() => UserRepo(userApi: Get.find()));
  }
}
