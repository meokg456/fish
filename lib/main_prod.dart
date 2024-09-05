import 'package:fish/app/flavor_config.dart';
import 'package:fish/app/flutter_social_app.dart';
import 'package:flutter/material.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.dev,
    values: FlavorValues(baseUrl: 'http://localhost:8080'),
  );
  // ignore: missing_provider_scope
  runApp(const FlutterSocialApp());
}
