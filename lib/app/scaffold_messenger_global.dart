import 'package:fish/app/router.dart';
import 'package:fish/l10n/error_localizations/error_messages.dart';
import 'package:fish/l10n/error_localizations/error_titles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fish/l10n/generated/app_localizations.dart';

class ScaffoldMessengerGlobal {
  static void showErrorMessage(String message) {
    final context = router.routerDelegate.navigatorKey.currentContext;
    if (context != null) {
      AppLocalizations localizations = AppLocalizations.of(context);

      final errorMessages = ErrorMessages.getTranslations(localizations);
      final errorTitles = ErrorTitles.getTranslations(localizations);
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(errorTitles[message] ?? localizations.error),
          content: Text(errorMessages[message] ?? message),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: Text(localizations.close),
            ),
          ],
        ),
      );
    }
  }
}
