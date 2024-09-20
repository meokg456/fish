import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog({
    super.key,
    required this.title,
    required this.content,
  });

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          onPressed: () {
            context.pop(false);
          },
          child: Text(localization.cancel),
        ),
        TextButton(
          onPressed: () {
            context.pop(true);
          },
          child: Text(localization.confirm),
        ),
      ],
    );
  }
}
