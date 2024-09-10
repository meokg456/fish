import 'package:fish/app/router.dart';
import 'package:fish/app/theme/dark_theme.dart';
import 'package:fish/app/theme/light_theme.dart';
import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class FlutterSocialApp extends StatelessWidget {
  const FlutterSocialApp({super.key});

  @override
  Widget build(BuildContext context) {
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
