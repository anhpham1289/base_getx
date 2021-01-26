import 'package:base_getx/@core/router/router.dart';
import 'package:base_getx/@share/utils/constaint.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*
    * Note: GetMaterialApp is optional if you’ll be using GetX
    *  only for state management, and actually used when managing routes,
    * which we’ll cover in future articles
    */
    return GetMaterialApp(
      theme: _applicationTheme(),
      defaultTransition: Transition.fadeIn,
      initialRoute: ROUTER_SPLASH,
      getPages: Routers.route,
      enableLog: true,
    ); // instead of MaterialApp
  }

  _applicationTheme() => ThemeData(
        primarySwatch: Colors.deepOrange,
        appBarTheme: AppBarTheme(color: Colors.deepOrange),
      );
}
