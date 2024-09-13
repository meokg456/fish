import 'package:fish/riverpods/enums/validate_errors.dart';
import 'package:fish/riverpods/authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fish/l10n/generated/app_localizations.dart';

class UserNameTextField extends ConsumerWidget {
  const UserNameTextField({super.key, this.onTap});

  final void Function()? onTap;

  String? validate(AppLocalizations localizations, WidgetRef ref) {
    final error = ref.read(loginProvider.notifier).validateUsername();
    if (error == ValidateErrors.invalid) {
      return localizations.invalidUsername;
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
            .updateForm(form.copyWith(username: value));
      },
      onTap: onTap,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: TextInputAction.next,
      validator: (value) => validate(localizations, ref),
      decoration: InputDecoration(
        hintText: localizations.userName,
      ),
    );
  }
}
