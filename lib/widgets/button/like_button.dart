import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LikeButton extends ConsumerWidget {
  const LikeButton({
    super.key,
    this.isLiked = false,
    this.onLiked,
  });

  final bool isLiked;
  final void Function()? onLiked;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final localizations = AppLocalizations.of(context);
    return TextButton.icon(
      onPressed: onLiked,
      icon: Icon(
        isLiked ? Icons.favorite : Icons.favorite_border,
      ),
      label: Text(localizations.like),
      style: TextButton.styleFrom(
        foregroundColor:
            isLiked ? theme.colorScheme.primary : theme.colorScheme.secondary,
      ),
    );
  }
}
