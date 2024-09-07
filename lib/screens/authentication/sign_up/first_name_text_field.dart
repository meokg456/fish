import 'package:fish/riverpods/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FirstNameTextField extends ConsumerWidget {
  const FirstNameTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = AppLocalizations.of(context);
    return TextFormField(
      onChanged: (value) {
        final form = ref.read(signUpProvider);
        ref
            .read(signUpProvider.notifier)
            .updateForm(form.copyWith(firstName: value));
      },
      decoration: InputDecoration(
        hintText: localizations.firstName,
      ),
    );
  }
}
