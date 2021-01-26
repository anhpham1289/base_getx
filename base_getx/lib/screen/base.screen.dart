import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  widthScreen({int percent}) =>
      percent != null ? (Get.width * percent) / 100 : Get.width;

  heightScreen({int percent}) =>
      percent != null ? (Get.height * percent) / 100 : Get.height;

  goTo({String screen, dynamic argument}) =>
      Get.toNamed(screen, arguments: argument);

  goToAndRemoveAll({String screen, dynamic argument}) =>
      Get.offAllNamed(screen, arguments: argument);

  goBack({dynamic argument}) => Get.back(result: argument);

  openDialog({Widget dialog}) => Get.dialog(dialog, barrierDismissible: false);


}
