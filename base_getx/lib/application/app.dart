import 'package:base_getx/@core/router/pages.dart';
import 'package:base_getx/@core/router/router.dart';
import 'package:base_getx/@share/localize/localize.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      theme: _applicationTheme(),
      defaultTransition: Transition.fadeIn,
      initialRoute: ROUTER_SPLASH,
      getPages: Routers.route,
      translations: Localizes(),
      locale: Localizes.locale,
      fallbackLocale: Localizes.fallbackLocale,
    );
  }

  _applicationTheme() => ThemeData(
        primarySwatch: Colors.deepOrange,
        appBarTheme: AppBarTheme(color: Colors.deepOrange),
      );
}
