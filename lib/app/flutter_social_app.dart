import 'package:fish/app/router.dart';
import 'package:fish/app/theme/dark_theme.dart';
import 'package:fish/app/theme/light_theme.dart';
import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class FlutterSocialApp extends StatelessWidget {
  const FlutterSocialApp({super.key});
  ThemeData customizeTheme(ThemeData theme) {
    return theme.copyWith(
      inputDecorationTheme: theme.inputDecorationTheme.copyWith(
        hintStyle: theme.textTheme.bodyLarge?.copyWith(
          color: theme.textTheme.bodyLarge?.color?.withOpacity(0.5),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final lightTheme = customizeTheme(setupLightTheme());
    final darkTheme = customizeTheme(setupDarkTheme());

    return MaterialApp.router(
      title: 'Fish',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('vi'),
      ],
      routerConfig: router,
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
