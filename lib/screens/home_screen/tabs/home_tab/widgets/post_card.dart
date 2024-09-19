import 'dart:async';

import 'package:fish/gen/assets.gen.dart';
import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/models/domain/post_model.dart';
import 'package:fish/widgets/button/like_button.dart';
import 'package:fish/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:visibility_detector/visibility_detector.dart';

class PostCard extends ConsumerStatefulWidget {
  const PostCard(
    this.post, {
    super.key,
    this.onTap,
    this.onLiked,
  });

  final PostModel post;
  final void Function()? onTap;
  final void Function()? onLiked;

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
    final theme = Theme.of(context);
    final localizations = AppLocalizations.of(context);
    return VisibilityDetector(
      key: Key(widget.post.id.toString()),
      onVisibilityChanged: (VisibilityInfo info) {
        if (info.visibleFraction > 0) {
          timer?.cancel();
          timer = Timer(const Duration(seconds: 60), () {
            keepAlive = false;
            updateKeepAlive();
          });
        }
      },
      child: InkWell(
        onTap: widget.onTap,
        borderRadius: BorderRadius.circular(8),
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
                    backgroundImage: widget.post.avatarUrl.isEmpty
                        ? AssetImage(Assets.images.defaultAvatar.keyName)
                        : NetworkImage(widget.post.avatarUrl),
                    radius: 50,
                  ),
                ),
                title: Text(
                  widget.post.author,
                  style: theme.textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      Utils.timeSpendFromCreated(widget.post.postAt),
                      style: theme.textTheme.titleSmall,
                    ),
                    const SizedBox(width: 4),
                    const Icon(Icons.public, size: 20),
                  ],
                ),
              ),
              if (widget.post.content.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(widget.post.content,
                      style: theme.textTheme.bodyLarge),
                ),
              const SizedBox(height: 8),
              if (widget.post.mediaUrl != null)
                Image.network(widget.post.mediaUrl!),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Row(
                  children: [
                    const Icon(Icons.favorite, color: Colors.red),
                    const SizedBox(width: 4),
                    Text(widget.post.numLikes.toString()),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: LikeButton(
                      isLiked: widget.post.isLiked,
                      onLiked: widget.onLiked,
                    ),
                  ),
                  Expanded(
                    child: TextButton.icon(
                      onPressed: widget.onTap,
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
      ),
    );
  }

  @override
  bool get wantKeepAlive {
    return keepAlive;
  }
}
