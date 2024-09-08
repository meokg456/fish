import 'package:fish/app/router.dart';
import 'package:fish/const/error_codes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ScaffoldMessengerGlobal {
  static Map<String, String> getErrorMessages(AppLocalizations localizations) {
    return {
      ErrorCodes.accountExist: localizations.accountExistMessages,
    };
  }

  static Map<String, String> getErrorTitle(AppLocalizations localizations) {
    return {
      ErrorCodes.accountExist: localizations.accountExist,
    };
  }

  static void showErrorMessage(String message) {
    final context = router.routerDelegate.navigatorKey.currentContext;
    if (context != null) {
      AppLocalizations localizations = AppLocalizations.of(context);

      final errorMessages = getErrorMessages(localizations);
      final errorTitles = getErrorTitle(localizations);
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(errorTitles[message] ?? message),
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
