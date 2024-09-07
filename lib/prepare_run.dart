import 'package:fish/app/theme/dark_theme.dart';
import 'package:fish/app/theme/light_theme.dart';
import 'package:flutter/material.dart';

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
}
