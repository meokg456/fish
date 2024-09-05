import 'package:fish/app/theme/themes.dart';
import 'package:flutter/material.dart';

Future<void> prepareRun() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initLightTheme();
  await initDarkTheme();
}
