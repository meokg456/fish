import 'package:fish/riverpods/enums/validate_errors.dart';
import 'package:fish/riverpods/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fish/l10n/app_localizations.dart';

class FirstNameTextField extends ConsumerWidget {
  const FirstNameTextField({super.key});

  String? validate(AppLocalizations localizations, WidgetRef ref) {
    final error = ref.read(signUpProvider.notifier).validateFirstName();
    if (error == ValidateErrors.empty) {
      return localizations.firstNameEmptyMessages;
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
            .updateForm(form.requireValue.copyWith(firstName: value));
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) => validate(localizations, ref),
      decoration: InputDecoration(
        hintText: localizations.firstName,
      ),
    );
  }
}
