import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  var counter = 0.obs;

  var login = "".obs;

  updateCounter() {
    counter.value++;
  }

  @override
  void onInit() {
    Get.log("onInit");

    /// Called first time the variable $_ is changed
    once(counter, (_) => print("$_ was changed once (once)"));
    /// Anti DDos - Called every time the user stops typing for 1 second, for example.
    debounce(counter, (_) => print("debouce$_ (debounce)"),
        time: Duration(seconds: 1));
    ever(counter, (_) => print("$_ has been changed (ever)"));
    GetStorage box = GetStorage();
      box.write("login", "login");
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    Get.log("onReady");
    GetStorage box = GetStorage();
    login.value = box.read('login');
  }

  @override
  void onClose() {
    Get.log("onClose");
    super.onClose();
  }

}
