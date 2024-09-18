import 'dart:async';

import 'package:fish/gen/assets.gen.dart';
import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/riverpods/post/posts.dart';
import 'package:fish/screens/home_screen/tabs/home_tab/widgets/like_button.dart';
import 'package:fish/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:visibility_detector/visibility_detector.dart';

class PostCard extends ConsumerStatefulWidget {
  const PostCard({super.key, required this.page, required this.index});

  final int page;
  final int index;

  @override
  ConsumerState<PostCard> createState() => _PostCardState();
}

class _PostCardState extends ConsumerState<PostCard>
    with AutomaticKeepAliveClientMixin {
  bool keepAlive = true;
  Timer? timer;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final model =
        ref.watch(postsProvider(widget.page)).requireValue[widget.index];
    final theme = Theme.of(context);
    final localizations = AppLocalizations.of(context);
    return VisibilityDetector(
      key: Key(model.id.toString()),
      onVisibilityChanged: (VisibilityInfo info) {
        if (info.visibleFraction > 0) {
          timer?.cancel();
          timer = Timer(const Duration(seconds: 60), () {
            keepAlive = false;
            updateKeepAlive();
          });
        }
      },
      child: Card(
        elevation: 5,
        margin: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              leading: Container(
                padding: const EdgeInsets.all(2),
                width: 50,
                height: 50,
                child: CircleAvatar(
                  backgroundImage: model.avatarUrl.isEmpty
                      ? AssetImage(Assets.images.defaultAvatar.keyName)
                      : NetworkImage(model.avatarUrl),
                  radius: 50,
                ),
              ),
              title: Text(
                model.author,
                style: theme.textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Text(
                    Utils.timeSpendFromCreated(model.postAt),
                    style: theme.textTheme.titleSmall,
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.public, size: 20),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(model.content, style: theme.textTheme.bodyLarge),
            ),
            const SizedBox(height: 8),
            Image.network(model.mediaUrl),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Row(
                children: [
                  const Icon(Icons.favorite, color: Colors.red),
                  const SizedBox(width: 4),
                  Text(model.numLikes.toString()),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: LikeButton(widget.page, widget.index),
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
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {
                      // Handle button press
                    },
                    icon: const Icon(Icons.share_outlined, size: 24),
                    label: Text(localizations.share),
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
    );
  }

  @override
  bool get wantKeepAlive {
    return keepAlive;
  }
}
