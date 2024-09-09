import 'package:fish/riverpods/enums/validate_errors.dart';
import 'package:fish/riverpods/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fish/l10n/generated/app_localizations.dart';

class PasswordTextField extends ConsumerWidget {
  const PasswordTextField({super.key});

  String? validate(AppLocalizations localizations, WidgetRef ref) {
    final error = ref.read(loginProvider.notifier).validatePassword();
    if (error == ValidateErrors.invalid) {
      return localizations.invalidPassword;
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = AppLocalizations.of(context);
    return TextFormField(
      onChanged: (value) {
        final form = ref.read(loginProvider);
        ref
            .read(loginProvider.notifier)
            .updateForm(form.requireValue.copyWith(password: value));
      },
      obscureText: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: TextInputAction.done,
      validator: (value) => validate(localizations, ref),
      decoration: InputDecoration(
        hintText: localizations.password,
      ),
    );
  }
}
