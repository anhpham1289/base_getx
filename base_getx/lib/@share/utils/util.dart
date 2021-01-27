import 'package:flutter/material.dart';
import 'package:get/get.dart';

getLocalize(String key, {List<String> args}) => key.trArgs(args);

widthScreen({int percent}) =>
    percent != null ? (Get.width * percent) / 100 : Get.width;

heightScreen({int percent}) =>
    percent != null ? (Get.height * percent) / 100 : Get.height;

goTo({@required String screen, dynamic argument}) =>
    Get.toNamed(screen, arguments: argument);

goToAndRemoveAll({@required String screen, dynamic argument}) =>
    Get.offAllNamed(screen, arguments: argument);

goBack({dynamic argument}) => Get.back(result: argument);

getArgument() => Get.arguments;

openDialog({@required Widget dialog, bool dismiss = false}) =>
    Get.dialog(dialog, barrierDismissible: dismiss);
