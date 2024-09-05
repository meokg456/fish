import 'package:fish/app/flavor_config.dart';
import 'package:fish/app/flutter_social_app.dart';
import 'package:fish/prepare_run.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await prepareRun();

  FlavorConfig(
    flavor: Flavor.dev,
    values: FlavorValues(baseUrl: 'http://localhost:8080'),
  );
  // ignore: missing_provider_scope
  runApp(const FlutterSocialApp());
}
