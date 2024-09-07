import 'package:fish/app/theme/app_custom_theme.dart';
import 'package:flutter/material.dart';

var darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: seedColor,
  ),
  buttonTheme: ButtonThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: Brightness.dark,
    ),
  ),
  textTheme: textTheme,
  inputDecorationTheme: inputDecorationTheme,
);
