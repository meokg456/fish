import 'dart:io';

import 'package:fish/app/error_observer.dart';
import 'package:fish/app/flavor_config.dart';
import 'package:fish/app/flutter_social_app.dart';
import 'package:fish/app/logging_observer.dart';
import 'package:fish/prepare_run.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  await prepareRun();

  String host = 'http://192.168.1.3:8080';
  String uploadHost = 'http://192.168.1.3:9200';

  FlavorConfig(
    flavor: Flavor.dev,
    values: FlavorValues(
      baseUrl: host,
      uploadUrl: uploadHost,
    ),
  );

  runApp(
    ProviderScope(
      observers: [LoggingObserver(), ErrorObserver()],
      child: const FlutterSocialApp(),
    ),
  );
}
