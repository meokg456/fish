import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/riverpods/post/create_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContentTextField extends ConsumerWidget {
  const ContentTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = AppLocalizations.of(context);
    return SizedBox(
      height: 96,
      child: TextField(
        onChanged: (value) {
          final form = ref.read(createPostProvider);
          ref
              .read(createPostProvider.notifier)
              .updateForm(form.copyWith(content: value));
        },
        decoration: InputDecoration(
          hintText: localizations.postHint,
          border: InputBorder.none,
        ),
        maxLines: null,
      ),
    );
  }
}
