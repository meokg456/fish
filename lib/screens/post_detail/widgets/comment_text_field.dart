import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/riverpods/comment/comment.dart';
import 'package:fish/riverpods/enums/validate_errors.dart';
import 'package:fish/riverpods/side_effect_performer.dart';
import 'package:fish/screens/post_detail/widgets/send_comment_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommentTextField extends ConsumerStatefulWidget {
  const CommentTextField(this.postId, {super.key, this.focusNode});

  final FocusNode? focusNode;
  final int postId;

  @override
  ConsumerState<CommentTextField> createState() => _CommentTextFieldState();
}

class _CommentTextFieldState extends ConsumerState<CommentTextField> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    ref.listenManual(sideEffectPerformerProvider(commentSideEffectId),
        (_, status) {
      if (status is AsyncLoading) {
        controller.text = "";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final comment = ref.watch(commentProvider(widget.postId));
    final isValid =
        ref.watch(commentProvider(widget.postId).notifier).validate() ==
            ValidateErrors.none;

    final isMultipleLines = '\n'.allMatches(comment.content).length + 1 > 1;

    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 160),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                    left: 16, right: 16, bottom: isMultipleLines ? 24 : 0),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainer,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: TextField(
                  controller: controller,
                  maxLines: null,
                  onChanged: (value) {
                    ref
                        .read(commentProvider(widget.postId).notifier)
                        .updateContent(value);
                  },
                  focusNode: widget.focusNode,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: localizations.commentHint,
                  ),
                ),
              ),
            ),
            if (isValid) SendCommentButton(widget.postId),
          ],
        ),
      ),
    );
  }
}
