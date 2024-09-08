import 'package:fish/riverpods/enums/validate_errors.dart';
import 'package:fish/riverpods/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ConfirmPasswordTextField extends ConsumerWidget {
  const ConfirmPasswordTextField({super.key});

  String? validate(AppLocalizations localizations, WidgetRef ref) {
    final error = ref.read(signUpProvider.notifier).validateConfirmPassword();
    if (error == ValidateErrors.notMatch) {
      return localizations.confirmPasswordDoesNotMatchMessages;
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = AppLocalizations.of(context);
    return TextFormField(
      onChanged: (value) {
        final form = ref.read(signUpProvider);
        ref
            .read(signUpProvider.notifier)
            .updateForm(form.requireValue.copyWith(confirmPassword: value));
      },
      obscureText: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) => validate(localizations, ref),
      decoration: InputDecoration(
        hintText: localizations.confirmPassword,
      ),
    );
  }
}
