import 'package:fish/app/error_observer.dart';
import 'package:fish/app/logging_observer.dart';
import 'package:fish/app/router.dart';
import 'package:fish/app/scaffold_messenger_global.dart';
import 'package:fish/screens/home_screen.dart';
import 'package:fish/screens/post_card.dart';
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
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
