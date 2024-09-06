import 'package:fish/app/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xff38d3e6),
    brightness: Brightness.dark,
  ),
  textTheme: textTheme,
  brightness: Brightness.dark,
);
