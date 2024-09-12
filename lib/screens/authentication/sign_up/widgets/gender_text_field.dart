import 'package:fish/models/enums/gender.dart';
import 'package:fish/riverpods/enums/validate_errors.dart';
import 'package:fish/riverpods/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fish/l10n/generated/app_localizations.dart';

class GenderTextField extends ConsumerWidget {
  const GenderTextField({super.key});

  String? validate(AppLocalizations localizations, WidgetRef ref) {
    final error = ref.read(signUpProvider.notifier).validateGender();
    if (error == ValidateErrors.empty) {
      return localizations.genderEmptyMessages;
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = AppLocalizations.of(context);
    final genderTranslate = {
      Gender.male: localizations.male,
      Gender.female: localizations.female,
      Gender.other: localizations.other,
    };
    return Theme(
      data: Theme.of(context).copyWith(
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: DropdownButtonFormField<Gender>(
        hint: Text(localizations.gender),
        value: ref.watch(signUpProvider.select((it) => it.gender)),
        icon: const Icon(Icons.male),
        focusColor: Colors.transparent,
        items: Gender.values
            .map(
              (gender) => DropdownMenuItem<Gender>(
                value: gender,
                child: Text(genderTranslate[gender] ?? ''),
              ),
            )
            .toList(),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) => validate(localizations, ref),
        onChanged: (value) {
          final form = ref.read(signUpProvider);
          ref
              .read(signUpProvider.notifier)
              .updateForm(form.copyWith(gender: value));
        },
      ),
    );
  }
}
