import 'package:fish/app/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:go_router/go_router.dart';

class CreateAccountButton extends ConsumerStatefulWidget {
  const CreateAccountButton({super.key});

  @override
  ConsumerState<CreateAccountButton> createState() =>
      _CreateAccountButtonState();
}

class _CreateAccountButtonState extends ConsumerState<CreateAccountButton> {
  late AppLocalizations localizations;
  late ThemeData theme;

  @override
  void didChangeDependencies() {
    localizations = AppLocalizations.of(context);
    theme = Theme.of(context);
    super.didChangeDependencies();
  }

  void onTap() {
    context.push(Routes.signUp);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: TextButton(
        onPressed: onTap,
        style: FilledButton.styleFrom(
          textStyle: theme.textTheme.titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          overlayColor: Colors.transparent,
        ),
        child: Text(localizations.createNewAccount),
      ),
    );
  }
}
