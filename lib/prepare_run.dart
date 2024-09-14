import 'package:fish/riverpods/app/app_setting.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

Future<void> prepareRun() async {
  WidgetsFlutterBinding.ensureInitialized();
  packageInfo = await PackageInfo.fromPlatform();
}
