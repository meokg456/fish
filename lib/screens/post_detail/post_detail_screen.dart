import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/riverpods/comment/comment.dart';
import 'package:fish/riverpods/comment/comments.dart';
import 'package:fish/riverpods/post/post_data.dart';
import 'package:fish/riverpods/post/post_detail.dart';
import 'package:fish/riverpods/side_effect_performer.dart';
import 'package:fish/screens/post_detail/widgets/comment_text_field.dart';
import 'package:fish/screens/post_detail/widgets/comment_widget.dart';
import 'package:fish/widgets/button/like_button.dart';
import 'package:fish/utils/utils.dart';
import 'package:fish/widgets/user/user_avatar.dart';
import 'package:fish/widgets/user/user_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostDetailScreen extends ConsumerStatefulWidget {
  const PostDetailScreen(this.postId, {super.key});

  final int postId;

  @override
  ConsumerState createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends ConsumerState<PostDetailScreen> {
  late AppLocalizations localizations;
  late ThemeData theme;
  final commentFocusNode = FocusNode();
  final scrollController = ScrollController();

  @override
  void didChangeDependencies() {
    localizations = AppLocalizations.of(context);
    theme = Theme.of(context);
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    ref.listenManual(sideEffectPerformerProvider(commentSideEffectId),
        (_, status) {
      if (status is AsyncData) {
        SchedulerBinding.instance.addPostFrameCallback((_) {
          scrollController.animateTo(
            scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 400),
            curve: Curves.linear,
          );
        });
      }
    });
  }

  void onLiked() {
    ref.read(postDataProvider.notifier).like(widget.postId);
  }

  void onComment() {
    commentFocusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    final status = ref.watch(postDetailProvider(widget.postId));
    final post = ref.watch(postDataProvider)[widget.postId]!;
    final comments = ref.watch(commentsProvider(widget.postId));
    final List<Widget> commentWidgets = switch (comments) {
      AsyncData(:final value) =>
        value.map((comment) => CommentWidget(comment)).toList(),
      AsyncLoading() => [
          const SizedBox(
            height: 96,
            child: Center(child: CircularProgressIndicator()),
          ),
        ],
      _ => [],
    };

    return switch (status) {
      AsyncData() => Scaffold(
          appBar: AppBar(
            titleSpacing: 0,
            title: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: UserAvatar(
                userId: post.authorId,
                avatarUrl: post.avatarUrl,
              ),
              title: UserName(
                userId: post.authorId,
                name: post.author,
              ),
              subtitle: Row(
                children: [
                  Text(
                    Utils.timeSpendFromCreated(post.postAt),
                    style: theme.textTheme.titleSmall,
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.public, size: 20),
                ],
              ),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  controller: scrollController,
                  cacheExtent: 1000,
                  children: [
                    post.content.isNotEmpty
                        ? Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: Utils.horizontalPadding(context),
                            ),
                            child: Text(post.content),
                          )
                        : const SizedBox(height: 16),
                    if (post.mediaUrl != null) Image.network(post.mediaUrl!),
                    Row(
                      children: [
                        Expanded(
                          child: LikeButton(
                            isLiked: post.isLiked,
                            onLiked: onLiked,
                          ),
                        ),
                        Expanded(
                          child: TextButton.icon(
                            onPressed: onComment,
                            icon: const Icon(Icons.mode_comment_outlined),
                            label: Text(localizations.comment),
                            style: TextButton.styleFrom(
                              foregroundColor: theme.colorScheme.secondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.favorite, color: Colors.red),
                          const SizedBox(width: 4),
                          Text(post.numLikes.toString()),
                        ],
                      ),
                    ),
                    ...commentWidgets,
                  ],
                ),
              ),
              CommentTextField(
                post.id,
                focusNode: commentFocusNode,
              ),
            ],
          ),
        ),
      _ => Scaffold(
          appBar: AppBar(),
          body: status.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : null,
        ),
    };
  }
}
