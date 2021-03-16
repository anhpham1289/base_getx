import 'package:base_getx/@core/binding/app.binding.dart';
import 'package:base_getx/@core/router/pages.dart';
import 'package:base_getx/@core/router/router.dart';
import 'package:base_getx/@share/localize/localize.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Application extends StatefulWidget {

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {

  @override
  void initState() {
    super.initState();
    _initLoading();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      theme: _applicationTheme(),
      initialBinding: AppBinding(),
      defaultTransition: Transition.fadeIn,
      builder: (_, child) => FlutterEasyLoading(child: child),
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

  void _initLoading() => EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 1500)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..maskType = EasyLoadingMaskType.black
    ..loadingStyle = EasyLoadingStyle.light
    ..toastPosition = EasyLoadingToastPosition.bottom
    ..indicatorSize = 45
    ..radius = 10
    ..fontSize = 14
    ..userInteractions = false;
}
