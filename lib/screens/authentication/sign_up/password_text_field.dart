import 'package:fish/riverpods/enums/validate_errors.dart';
import 'package:fish/riverpods/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PasswordTextField extends ConsumerWidget {
  const PasswordTextField({super.key});

  String? validate(AppLocalizations localizations, WidgetRef ref) {
    final error = ref.read(signUpProvider.notifier).validatePassword();
    if (error == ValidateErrors.invalid) {
      return localizations.invalidPasswordMessages;
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
            .updateForm(form.copyWith(password: value));
      },
      obscureText: true,
      autovalidateMode: AutovalidateMode.onUnfocus,
      validator: (value) => validate(localizations, ref),
      decoration: InputDecoration(
        hintText: localizations.newPassword,
      ),
    );
  }
}
