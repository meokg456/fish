import 'package:fish/riverpods/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignUpButton extends ConsumerStatefulWidget {
  const SignUpButton(this.formKey, {super.key});

  final GlobalKey<FormState> formKey;

  @override
  ConsumerState<SignUpButton> createState() => _SignUpButtonState();
}

class _SignUpButtonState extends ConsumerState<SignUpButton> {
  late final AppLocalizations localizations;
  late final ThemeData theme;

  @override
  void didChangeDependencies() {
    localizations = AppLocalizations.of(context);
    theme = Theme.of(context);
    super.didChangeDependencies();
  }

  void onTap() {
    if (widget.formKey.currentState?.validate() ?? false) {
      ref.read(signUpProvider.notifier).signUp();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      width: 194,
      child: FilledButton.tonal(
        onPressed: onTap,
        child: Text(localizations.signUp),
      ),
    );
  }
}
