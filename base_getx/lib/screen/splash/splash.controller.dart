import 'package:base_getx/@core/data/api/user.api.dart';
import 'package:base_getx/@core/data/local/storage/data.storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController with WidgetsBindingObserver {

  var counter = 0.obs;

  var login = "".obs;

  updateCounter() {
    counter.value++;
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) updateCounter();
  }

  @override
  void onInit() {
    WidgetsBinding.instance.addObserver(this);
    Get.log("onInit");
    once(counter, (_) => print("$_ was changed once (once)"));
    debounce(counter, (_) => print("debouce$_ (debounce)"),
        time: Duration(seconds: 1));
    ever(counter, (_) => print("$_ has been changed (ever)"));
    super.onInit();
  }

  getData() async {
    var _userRepo = Get.find<UserApi>();
    await _userRepo.getList();
  }

  @override
  void onReady() {
    super.onReady();
    Get.log("onReady");
    _login();
    getData();
  }

  @override
  void onClose() {
    Get.log("onClose");
    WidgetsBinding.instance.removeObserver(this);
    super.onClose();
  }

  _login() async {
    var _storage = Get.find<DataStorage>();
    // await _storage.setLogin('login Storage');
    // await _storage.setToken('abcdef');
    login.value = '${_storage.getLogin()} -- ${_storage.getToken()}';
  }
}
