import 'dart:io';

import 'package:fish/app/error_observer.dart';
import 'package:fish/app/flavor_config.dart';
import 'package:fish/app/flutter_social_app.dart';
import 'package:fish/app/logging_observer.dart';
import 'package:fish/app/router.dart';
import 'package:fish/prepare_run.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  await prepareRun();

  FlavorConfig(
    flavor: Flavor.dev,
    values: FlavorValues(
      baseUrl:
          Platform.isAndroid ? 'http://10.0.2.2:8080' : 'http://localhost:8080',
    ),
  );

  runApp(
    ProviderScope(
      observers: [LoggingObserver(), ErrorObserver()],
      child: const FlutterSocialApp(),
    ),
  );
}
