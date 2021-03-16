import 'package:base_getx/@share/utils/util.dart';
import 'package:base_getx/@share/widget/scaffold.widget.dart';
import 'package:base_getx/screen/home/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetWidget<HomeController> {
  String aws = "AK23123IALALEMEL33243OLIA";
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      titleAppBar: "Home",
      body: Column(
        children: [
          Text(getArgument()),
          Obx(() => Text(controller.userName.value))
        ],
      ),
    );
  }
}
