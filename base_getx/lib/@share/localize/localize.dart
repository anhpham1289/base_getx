import 'dart:ui';

import 'package:base_getx/@share/localize/en_US.localize.dart';
import 'package:base_getx/@share/localize/ja_JP.localize.dart';
import 'package:get/get.dart';

class Localizes extends Translations {
  static final locale = Get.deviceLocale;
  static final fallbackLocale = Locale('en', 'US');

  @override
  Map<String, Map<String, String>> get keys => {
        'ja_JP': ja_JP,
        'en_US': en_US,
      };
}
