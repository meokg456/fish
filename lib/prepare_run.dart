import 'package:fish/app/theme/dark_theme.dart';
import 'package:fish/app/theme/light_theme.dart';
import 'package:fish/riverpods/app/app_setting.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

ThemeData setupTheme(ThemeData theme) {
  return theme.copyWith(
    inputDecorationTheme: theme.inputDecorationTheme.copyWith(
      hintStyle: theme.textTheme.bodyLarge?.copyWith(
        color: theme.textTheme.bodyLarge?.color?.withOpacity(0.5),
      ),
    ),
  );
}

Future<void> prepareRun() async {
  WidgetsFlutterBinding.ensureInitialized();
  darkTheme = setupTheme(darkTheme);
  lightTheme = setupTheme(lightTheme);
  packageInfo = await PackageInfo.fromPlatform();
}
