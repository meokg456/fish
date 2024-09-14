import 'package:fish/app/theme/app_custom_theme.dart';
import 'package:flutter/material.dart';

ThemeData setupLightTheme() {
  final colorScheme = ColorScheme.fromSeed(seedColor: seedColor);
  return ThemeData(
    colorScheme: colorScheme,
    textTheme: textTheme,
    inputDecorationTheme: inputDecorationTheme,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: colorScheme.surface,
      surfaceTintColor: colorScheme.surfaceTint,
    ),
  );
}
