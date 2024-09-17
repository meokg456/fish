import 'package:fish/app/router.dart';
import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/riverpods/enums/validate_errors.dart';
import 'package:fish/riverpods/post/create_post.dart';
import 'package:fish/riverpods/side_effect_performer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PostButton extends ConsumerStatefulWidget {
  const PostButton({super.key});

  @override
  ConsumerState createState() => _PostButtonState();
}

class _PostButtonState extends ConsumerState<PostButton> {
  late AppLocalizations localizations;
  late ThemeData theme;

  @override
  void didChangeDependencies() {
    localizations = AppLocalizations.of(context);
    theme = Theme.of(context);
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    ref.listenManual(sideEffectPerformerProvider(createPostSideEffectId),
        (_, status) {
      if (status is AsyncData) {
        context.pop();
      }
    });
  }

  void onTap() {
    ref
        .read(sideEffectPerformerProvider(createPostSideEffectId).notifier)
        .perform(ref.read(createPostProvider.notifier).createPost);
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(createPostProvider);
    final status =
        ref.watch(sideEffectPerformerProvider(createPostSideEffectId));
    return TextButton(
      onPressed: status is! AsyncLoading &&
              ref.read(createPostProvider.notifier).validatePost() ==
                  ValidateErrors.none
          ? onTap
          : null,
      style: TextButton.styleFrom(
        textStyle:
            theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
      child: Text(
        localizations.post,
      ),
    );
  }
}
