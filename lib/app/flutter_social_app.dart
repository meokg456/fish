import 'package:fish/app/error_observer.dart';
import 'package:fish/app/logging_observer.dart';
import 'package:fish/app/scaffold_messenger_global.dart';
import 'package:fish/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FlutterSocialApp extends StatelessWidget {
  const FlutterSocialApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [LoggingObserver(), ErrorObserver()],
      child: MaterialApp(
        title: 'Flutter social app',
        navigatorKey: ScaffoldMessengerGlobal.navigatorKey,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
