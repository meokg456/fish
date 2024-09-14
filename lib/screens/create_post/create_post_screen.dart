import 'dart:io';

import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/riverpods/file/picked_files.dart';
import 'package:fish/screens/create_post/widgets/uploading_image.dart';
import 'package:fish/utils/permission_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class CreatePostScreen extends ConsumerStatefulWidget {
  const CreatePostScreen({super.key});

  @override
  ConsumerState createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends ConsumerState<CreatePostScreen> {
  late AppLocalizations localizations;
  late ThemeData theme;

  @override
  void didChangeDependencies() {
    localizations = AppLocalizations.of(context);
    theme = Theme.of(context);
    super.didChangeDependencies();
  }

  Future<void> onTap() async {
    final isGrant = await PermissionHandler.request(
      Permission.photos,
    );
    final imagePicker = ImagePicker();
    if (isGrant) {
      final files = await imagePicker.pickMultiImage();
      await Future.wait(
        files.map((file) => precacheImage(FileImage(File(file.path)), context)),
      );

      ref
          .read(pickedFilesProvider.notifier)
          .addFiles(files.map((file) => file.path).toList());
    }
  }

  @override
  Widget build(BuildContext context) {
    final pickedFiles = ref.watch(pickedFilesProvider);
    ;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Wrap(
            children: pickedFiles
                .map(
                  (file) => UploadingImage(file),
                )
                .toList(),
          ),
          FilledButton(
            onPressed: onTap,
            child: Text('Upload image'),
          ),
        ],
      )),
    );
  }
}
