import 'package:fish/riverpods/sign_up.dart';
import 'package:fish/widgets/dialog/notification_dialog.dart';
import 'package:fish/widgets/loading/button_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:go_router/go_router.dart';

class SignUpButton extends ConsumerStatefulWidget {
  const SignUpButton(this.formKey, {super.key});

  final GlobalKey<FormState> formKey;

  @override
  ConsumerState<SignUpButton> createState() => _SignUpButtonState();
}

class _SignUpButtonState extends ConsumerState<SignUpButton> {
  late AppLocalizations localizations;
  late ThemeData theme;

  @override
  void didChangeDependencies() {
    localizations = AppLocalizations.of(context);
    theme = Theme.of(context);
    super.didChangeDependencies();
  }

  void showSuccessMessages() {
    showDialog(
      context: context,
      builder: (context) => NotificationDialog(
        title: localizations.success,
        content: localizations.signUpSuccessfullyMessages,
      ),
    ).whenComplete(() {
      if (mounted) {
        context.pop();
      }
    });
  }

  void onTap() {
    if (widget.formKey.currentState?.validate() ?? false) {
      ref.read(signUpProvider.notifier).signUp().then((success) {
        if (success) {
          showSuccessMessages();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final response = ref.watch(signUpProvider);
    return SizedBox(
      height: 36,
      width: 194,
      child: FilledButton(
        onPressed: switch (response) {
          AsyncLoading() => null,
          _ => onTap,
        },
        child: switch (response) {
          AsyncLoading() => const ButtonProgressIndicator(),
          _ => Text(localizations.signUp),
        },
      ),
    );
  }
}
