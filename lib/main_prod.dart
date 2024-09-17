import 'package:fish/app/error_observer.dart';
import 'package:fish/app/flavor_config.dart';
import 'package:fish/app/flutter_social_app.dart';
import 'package:fish/app/logging_observer.dart';
import 'package:fish/prepare_run.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  await prepareRun();

  FlavorConfig(
    flavor: Flavor.dev,
    values: FlavorValues(
      baseUrl: 'http://192.168.1.100:8080',
      uploadUrl: 'http://192.168.1.100:9200',
    ),
  );
  // ignore: missing_provider_scope
  runApp(
    ProviderScope(
      observers: [LoggingObserver(), ErrorObserver()],
      child: const FlutterSocialApp(),
    ),
  );
}
