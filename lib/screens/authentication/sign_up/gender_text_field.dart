import 'package:fish/models/gender.dart';
import 'package:fish/riverpods/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GenderTextField extends ConsumerWidget {
  const GenderTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = AppLocalizations.of(context);
    final genderTranslate = {
      Gender.male: localizations.male,
      Gender.female: localizations.female,
      Gender.other: localizations.other,
    };
    return DropdownButtonFormField<Gender>(
      hint: Text(localizations.gender),
      value: ref.watch(signUpProvider.select((it) => it.gender)),
      icon: const Icon(Icons.male),
      items: Gender.values
          .map(
            (gender) => DropdownMenuItem<Gender>(
              value: gender,
              child: Text(genderTranslate[gender] ?? ''),
            ),
          )
          .toList(),
      onChanged: (value) {
        final form = ref.read(signUpProvider);
        ref
            .read(signUpProvider.notifier)
            .updateForm(form.copyWith(gender: value));
      },
    );
  }
}
