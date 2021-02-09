import 'package:base_getx/@core/router/pages.dart';
import 'package:base_getx/@share/constants/language.constant.dart';
import 'package:base_getx/@share/utils/util.dart';
import 'package:base_getx/@share/widget/scaffold.widget.dart';
import 'package:base_getx/screen/splash/splash.controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        titleAppBar: "Demo Get-X",
        body: GestureDetector(
            onTap: () {
              controller.updateCounter();
              if (controller.counter % 2 == 0)
                Get.updateLocale(Locale('ja', 'JP'));
              else
                Get.updateLocale(Locale('en', 'US'));
              goTo(screen: ROUTER_HOME, argument: controller.login.value);
            },
            child: Column(
              children: [
                Text(getLocalize(helloLang)),
                Obx(() => Text('${controller.counter}')),
                Obx(() => Text('${controller.login}')),
              ],
            )));
  }
}
