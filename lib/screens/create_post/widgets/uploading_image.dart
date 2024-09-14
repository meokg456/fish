import 'dart:io';

import 'package:fish/riverpods/file/upload_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UploadingImage extends ConsumerWidget {
  const UploadingImage(this.filePath, {super.key});

  final String filePath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final progress = ref.watch(uploadFileProvider(filePath));
    return Container(
      height: 92,
      width: 92,
      padding: const EdgeInsets.all(4),
      child: Stack(
        children: [
          Image.file(
            File(filePath),
            fit: BoxFit.cover,
            height: 92,
            width: 92,
          ),
          switch (progress) {
            AsyncData(:final value) => value.current != value.total
                ? Container(
                    color: theme.colorScheme.surfaceContainerHighest
                        .withOpacity(0.32),
                    child: Center(
                      child: CircularProgressIndicator(
                        value: value.current / value.total,
                      ),
                    ),
                  )
                : Container(),
            _ => Container(),
          },
        ],
      ),
    );
  }
}
