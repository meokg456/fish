import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AllTypeScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => PointerDeviceKind.values.toSet();
}
