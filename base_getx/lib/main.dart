import 'package:base_getx/@core/data/environment/dev.environment.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:global_configuration/global_configuration.dart';

import 'application/app.dart';

void main() async {
  await initProject();
  runApp(Application());
}

Future<void> initProject() async {
  WidgetsFlutterBinding.ensureInitialized();
  _setConfigEnvironment();
  await GetStorage.init();
}

void _setConfigEnvironment() {
  GlobalConfiguration().loadFromMap(devEnvironment);
}
