import 'package:fish/riverpods/login.dart';
import 'package:fish/riverpods/side_effect_performer.dart';
import 'package:fish/widgets/loading/button_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fish/l10n/generated/app_localizations.dart';

class LoginButton extends ConsumerStatefulWidget {
  const LoginButton({super.key, this.onSubmit});

  final void Function()? onSubmit;

  @override
  ConsumerState<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends ConsumerState<LoginButton> {
  late AppLocalizations localizations;
  late ThemeData theme;

  @override
  void didChangeDependencies() {
    localizations = AppLocalizations.of(context);
    theme = Theme.of(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final response = ref.watch(sideEffectPerformerProvider(loginSideEffectId));
    return SizedBox(
      height: 54,
      width: double.infinity,
      child: FilledButton(
        onPressed: switch (response) {
          AsyncLoading() => null,
          _ => widget.onSubmit,
        },
        style: FilledButton.styleFrom(textStyle: theme.textTheme.titleLarge),
        child: switch (response) {
          AsyncLoading() => const ButtonProgressIndicator(),
          _ => Text(
              localizations.login,
            ),
        },
      ),
    );
  }
}
