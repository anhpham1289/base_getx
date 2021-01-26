import 'package:base_getx/screen/base.screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends BaseState<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Splash'),
    );
  }
}
