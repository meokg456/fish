import 'package:fish/riverpods/comment/comment.dart';
import 'package:fish/riverpods/side_effect_performer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SendCommentButton extends ConsumerWidget {
  const SendCommentButton(this.postId, {super.key});

  final int postId;

  void onTap(WidgetRef ref) {
    ref
        .read(sideEffectPerformerProvider(commentSideEffectId).notifier)
        .perform(ref.read(commentProvider(postId).notifier).comment);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final status = ref.watch(sideEffectPerformerProvider(commentSideEffectId));
    return IconButton(
      onPressed: (status is AsyncLoading) ? null : () => onTap(ref),
      icon: const Icon(Icons.send),
      style: IconButton.styleFrom(
        foregroundColor: theme.colorScheme.primary,
      ),
    );
  }
}
