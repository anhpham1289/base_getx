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
        body: GestureDetector(
            onTap: () {
              openDialog1(onConfirm: () {}, onCancel: () {});
            },
            child: Column(
              children: [
                Text(getLocalize(helloLang)),
                Text('${controller.counter}')
              ],
            )));
  }
}
