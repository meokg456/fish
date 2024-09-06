import 'package:fish/app/error_observer.dart';
import 'package:fish/app/logging_observer.dart';
import 'package:fish/app/router.dart';
import 'package:fish/app/theme/dark_theme.dart';
import 'package:fish/app/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FlutterSocialApp extends StatelessWidget {
  const FlutterSocialApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [LoggingObserver(), ErrorObserver()],
      child: MaterialApp.router(
        title: 'Flutter social app',
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
      ),
    );
  }
}
