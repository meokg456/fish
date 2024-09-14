import 'package:fish/app/theme/app_custom_theme.dart';
import 'package:flutter/material.dart';

ThemeData setupDarkTheme() {
  final colorScheme =
      ColorScheme.fromSeed(brightness: Brightness.dark, seedColor: seedColor);
  return ThemeData(
    brightness: Brightness.dark,
    colorScheme: colorScheme,
    buttonTheme: ButtonThemeData(
      colorScheme: colorScheme,
    ),
    textTheme: textTheme,
    inputDecorationTheme: inputDecorationTheme,
  );
}
