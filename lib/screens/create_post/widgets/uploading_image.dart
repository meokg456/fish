import 'dart:io';

import 'package:fish/riverpods/file/upload_file.dart';
import 'package:fish/riverpods/file/upload_file_progress.dart';
import 'package:fish/riverpods/post/create_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UploadingImage extends ConsumerStatefulWidget {
  const UploadingImage(this.filePath, {super.key});

  final String filePath;

  @override
  ConsumerState<UploadingImage> createState() => _UploadingImageState();
}

class _UploadingImageState extends ConsumerState<UploadingImage> {
  late ThemeData theme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    theme = Theme.of(context);
  }

  @override
  void initState() {
    super.initState();
    ref.listenManual(uploadFileProvider(widget.filePath), (_, data) {
      if (data is AsyncData) {
        final form = ref.read(createPostProvider);

        ref
            .read(createPostProvider.notifier)
            .updateForm(form.copyWith(mediaLink: data.requireValue));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final progress = ref.watch(uploadFileProgressProvider);
    print(progress);
    if (!progress.hasValue) {
      return Container();
    }
    final value = progress.requireValue;
    return Stack(
      children: [
        Image.file(
          File(widget.filePath),
          fit: BoxFit.cover,
        ),
        value.current != value.total
            ? Positioned.fill(
                child: Container(
                  color: theme.colorScheme.surfaceContainerHighest
                      .withOpacity(0.32),
                  child: Center(
                    child: CircularProgressIndicator(
                      value: value.current / value.total,
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
