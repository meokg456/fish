import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/riverpods/post/posts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LikeButton extends ConsumerWidget {
  const LikeButton(this.page, this.index, {super.key});

  final int page;
  final int index;

  void onLiked(WidgetRef ref) {
    ref.read(postsProvider(page).notifier).like(index);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLiked = ref.watch(
      postsProvider(page).select((posts) => posts.requireValue[index].isLiked),
    );
    final theme = Theme.of(context);
    final localizations = AppLocalizations.of(context);
    return TextButton.icon(
      onPressed: () => onLiked(ref),
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
