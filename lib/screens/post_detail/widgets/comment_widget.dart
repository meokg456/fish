import 'package:fish/gen/assets.gen.dart';
import 'package:fish/models/domain/comment_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommentWidget extends ConsumerWidget {
  const CommentWidget(this.comment, {super.key});

  final CommentModel comment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return Opacity(
      opacity: comment.id == null ? 0.5 : 1,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        horizontalTitleGap: 8,
        leading: Container(
          padding: const EdgeInsets.all(2),
          width: 50,
          height: 50,
          child: CircleAvatar(
            backgroundImage: comment.authorAvatar.isEmpty
                ? AssetImage(Assets.images.defaultAvatar.keyName)
                : NetworkImage(comment.authorAvatar),
            radius: 50,
          ),
        ),
        title: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                comment.authorName,
                style: theme.textTheme.labelLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                comment.content,
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
