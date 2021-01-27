import 'package:get/get.dart';

class SplashController extends GetxController {
  var counter = 0;

  @override
  void onInit() {
    Get.log("onInit");
    super.onInit();
  }

  @override
  void onReady() {
    Get.log("onReady");
    super.onReady();
  }

  @override
  void onClose() {
    Get.log("onClose");
    super.onClose();
  }
}
