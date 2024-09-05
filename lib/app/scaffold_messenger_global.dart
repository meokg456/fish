import 'package:fish/app/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldMessengerGlobal {
  static void showErrorMessage(String message) {
    final context = router.routerDelegate.navigatorKey.currentContext;
    if (context != null) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: const Text('Close'),
            )
          ],
        ),
      );
    }
  }
}
