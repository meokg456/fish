import 'package:fish/app/router.dart';
import 'package:fish/riverpods/login.dart';
import 'package:fish/widgets/loading/button_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:go_router/go_router.dart';

class LoginButton extends ConsumerStatefulWidget {
  const LoginButton(this.formKey, {super.key});

  final GlobalKey<FormState> formKey;

  @override
  ConsumerState<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends ConsumerState<LoginButton> {
  late AppLocalizations localizations;
  late ThemeData theme;

  @override
  void didChangeDependencies() {
    localizations = AppLocalizations.of(context);
    theme = Theme.of(context);
    super.didChangeDependencies();
  }

  void onTap() {
    if (widget.formKey.currentState?.validate() ?? false) {
      ref.read(loginProvider.notifier).login().then((success) {
        if (success) {
          if (mounted) {
            context.pushReplacement(Routes.home);
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final response = ref.watch(loginProvider);
    return SizedBox(
      height: 54,
      width: double.infinity,
      child: FilledButton(
        onPressed: switch (response) {
          AsyncLoading() => null,
          _ => onTap,
        },
        style: FilledButton.styleFrom(textStyle: theme.textTheme.titleLarge),
        child: switch (response) {
          AsyncLoading() => const ButtonProgressIndicator(),
          _ => Text(
              localizations.login,
            ),
        },
      ),
    );
  }
}
