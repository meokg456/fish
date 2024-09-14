import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostButton extends ConsumerStatefulWidget {
  const PostButton({super.key});

  @override
  ConsumerState createState() => _PostButtonState();
}

class _PostButtonState extends ConsumerState<PostButton> {
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
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        textStyle:
            theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
      child: Text(
        localizations.post,
      ),
    );
  }
}
