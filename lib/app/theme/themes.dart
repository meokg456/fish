import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_theme_plus/json_theme_plus.dart';

late final ThemeData darkTheme;
late final ThemeData lightTheme;

Future<void> initDarkTheme() async {
  final themeStr = await rootBundle.loadString('assets/themes/dark_theme.json');
  final themeJson = jsonDecode(themeStr);
  final theme = ThemeDecoder.decodeThemeData(themeJson)!;
  darkTheme = theme.copyWith(
    colorScheme: theme.colorScheme
        .copyWith(surfaceContainerLow: const Color(0xFF3D3D3C)),
  );
}

Future<void> initLightTheme() async {
  final themeStr =
      await rootBundle.loadString('assets/themes/light_theme.json');
  final themeJson = jsonDecode(themeStr);
  final theme = ThemeDecoder.decodeThemeData(themeJson)!;
  lightTheme = theme.copyWith(
    colorScheme: theme.colorScheme
        .copyWith(surfaceContainerLow: const Color(0xFFFAF4FE)),
  );
}
