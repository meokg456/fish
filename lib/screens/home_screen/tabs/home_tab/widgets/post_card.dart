import 'dart:async';

import 'package:fish/gen/assets.gen.dart';
import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/models/domain/post_model.dart';
import 'package:fish/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class PostCard extends StatefulWidget {
  const PostCard({super.key, required this.model, this.onLiked});

  final PostModel model;
  final void Function()? onLiked;

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard>
    with AutomaticKeepAliveClientMixin {
  bool keepAlive = true;
  Timer? timer;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final theme = Theme.of(context);
    final localizations = AppLocalizations.of(context);
    return VisibilityDetector(
      key: Key(widget.model.id.toString()),
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
                  backgroundImage: widget.model.avatarUrl.isEmpty
                      ? AssetImage(Assets.images.defaultAvatar.keyName)
                      : NetworkImage(widget.model.avatarUrl),
                  radius: 50,
                ),
              ),
              title: Text(
                widget.model.author,
                style: theme.textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Text(
                    Utils.timeSpendFromCreated(widget.model.postAt),
                    style: theme.textTheme.titleSmall,
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.public, size: 20),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child:
                  Text(widget.model.content, style: theme.textTheme.bodyLarge),
            ),
            const SizedBox(height: 8),
            Image.network(widget.model.mediaUrl),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Row(
                children: [
                  const Icon(Icons.favorite, color: Colors.red),
                  const SizedBox(width: 4),
                  Text(widget.model.numLikes.toString()),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton.icon(
                    onPressed: widget.onLiked,
                    icon: Icon(
                      widget.model.isLiked
                          ? Icons.favorite
                          : Icons.favorite_border,
                    ),
                    label: Text(localizations.like),
                    style: TextButton.styleFrom(
                      foregroundColor: widget.model.isLiked
                          ? theme.colorScheme.primary
                          : theme.colorScheme.secondary,
                    ),
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
