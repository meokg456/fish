import 'dart:io';

import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/riverpods/file/picked_file.dart';
import 'package:fish/utils/permission_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class UploadImageMenuButton extends ConsumerWidget {
  const UploadImageMenuButton({super.key});

  Future<void> onTap(BuildContext context, WidgetRef ref) async {
    final isGrant = await PermissionHandler.request(
      Permission.photos,
    );
    final imagePicker = ImagePicker();
    if (isGrant) {
      final file = await imagePicker.pickImage(source: ImageSource.gallery);
      if (file != null && context.mounted) {
        precacheImage(FileImage(File(file.path)), context);
        ref.read(pickedFileProvider.notifier).addFile(file.path);
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = AppLocalizations.of(context);
    return ListTile(
      leading: const Icon(
        Icons.image,
        color: Colors.green,
      ),
      title: Text(localizations.photoVideo),
      onTap: () => onTap(context, ref),
    );
  }
}
