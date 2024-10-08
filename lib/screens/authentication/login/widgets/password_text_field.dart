import 'package:fish/riverpods/enums/validate_errors.dart';
import 'package:fish/riverpods/authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fish/l10n/generated/app_localizations.dart';

class PasswordTextField extends ConsumerWidget {
  const PasswordTextField({super.key, this.onSubmit, this.onTap});

  final void Function()? onSubmit;
  final void Function()? onTap;

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
            .updateForm(form.copyWith(password: value));
      },
      onFieldSubmitted: (value) => onSubmit?.call(),
      onTap: onTap,
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
