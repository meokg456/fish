import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignUpButton extends ConsumerStatefulWidget {
  const SignUpButton({super.key});

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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      width: 194,
      child: FilledButton.tonal(
        onPressed: () {},
        child: Text(localizations.signUp),
      ),
    );
  }
}
