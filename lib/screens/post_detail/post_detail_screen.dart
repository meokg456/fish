import 'package:fish/app/router.dart';
import 'package:fish/gen/assets.gen.dart';
import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/riverpods/post/post_detail.dart';
import 'package:fish/widgets/button/like_button.dart';
import 'package:fish/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PostDetailScreen extends ConsumerStatefulWidget {
  const PostDetailScreen(this.postId, {super.key});

  final int postId;

  @override
  ConsumerState createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends ConsumerState<PostDetailScreen> {
  late AppLocalizations localizations;
  late ThemeData theme;

  @override
  void didChangeDependencies() {
    localizations = AppLocalizations.of(context);
    theme = Theme.of(context);
    super.didChangeDependencies();
  }

  void onLiked() {
    ref.read(postDetailProvider(widget.postId).notifier).like();
  }

  @override
  Widget build(BuildContext context) {
    final post = ref.watch(postDetailProvider(widget.postId));
    return switch (post) {
      AsyncData(:final value) => PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) {
            context.pop(value);
          },
          child: Scaffold(
            appBar: AppBar(
              title: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                leading: Container(
                  padding: const EdgeInsets.all(2),
                  width: 50,
                  height: 50,
                  child: CircleAvatar(
                    backgroundImage: value.avatarUrl.isEmpty
                        ? AssetImage(Assets.images.defaultAvatar.keyName)
                        : NetworkImage(value.avatarUrl),
                    radius: 50,
                  ),
                ),
                title: Text(
                  value.author,
                  style: theme.textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      Utils.timeSpendFromCreated(value.postAt),
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
                    children: [
                      value.content.isNotEmpty
                          ? Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: Utils.horizontalPadding(context),
                              ),
                              child: Text(value.content),
                            )
                          : const SizedBox(height: 16),
                      if (value.mediaUrl != null)
                        Image.network(value.mediaUrl!),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: Row(
                          children: [
                            const Icon(Icons.favorite, color: Colors.red),
                            const SizedBox(width: 4),
                            Text(value.numLikes.toString()),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: LikeButton(
                              isLiked: value.isLiked,
                              onLiked: onLiked,
                            ),
                          ),
                          Expanded(
                            child: TextButton.icon(
                              onPressed: () {
                                // Handle button press
                              },
                              icon: const Icon(Icons.mode_comment_outlined),
                              label: Text(localizations.comment),
                              style: TextButton.styleFrom(
                                foregroundColor: theme.colorScheme.secondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 160),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          color: theme.colorScheme.surfaceContainer,
                          borderRadius: BorderRadius.circular(24)),
                      child: const TextField(
                        maxLines: null,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      _ => Scaffold(
          appBar: AppBar(),
        ),
    };
  }
}
