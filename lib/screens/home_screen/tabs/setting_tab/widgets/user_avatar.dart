import 'package:fish/gen/assets.gen.dart';
import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/riverpods/user/user.dart';
import 'package:fish/utils/permission_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:skeletonizer/skeletonizer.dart';

class UserAvatar extends ConsumerWidget {
  const UserAvatar({super.key});

  Future<void> onPickAvatarImage(WidgetRef ref) async {
    final isGrant = await PermissionHandler.request(
      Permission.photos,
    );
    final imagePicker = ImagePicker();
    if (isGrant) {
      final file = await imagePicker.pickImage(source: ImageSource.gallery);
      if (file != null) {
        ref.read(userProvider.notifier).updateAvatar(file.path);
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final user = ref.watch(userProvider);

    return Skeletonizer(
      enabled: user.isLoading,
      child: Column(
        children: [
          ClipOval(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 64,
                  backgroundImage:
                      user.hasValue && user.requireValue.avatarUrl.isNotEmpty
                          ? NetworkImage(user.requireValue.avatarUrl)
                          : AssetImage(Assets.images.defaultAvatar.keyName),
                ),
                Positioned.fill(
                  top: 80,
                  child: InkWell(
                    onTap: () => onPickAvatarImage(ref),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Container(
                      color: theme.colorScheme.outline.withOpacity(0.48),
                      child: const Opacity(
                        opacity: 0.72,
                        child: Icon(Icons.camera, size: 32),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Text(
            user.hasValue ? user.requireValue.nickName : 'nickname',
            style: theme.textTheme.headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
