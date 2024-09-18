import 'package:fish/gen/assets.gen.dart';
import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/riverpods/file/picked_file.dart';
import 'package:fish/riverpods/post/create_post.dart';
import 'package:fish/riverpods/user/user.dart';
import 'package:fish/screens/create_post/widgets/post_button.dart';
import 'package:fish/screens/create_post/widgets/upload_image_menu_button.dart';
import 'package:fish/screens/create_post/widgets/uploading_image.dart';
import 'package:fish/screens/create_post/widgets/content_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CreatePostScreen extends ConsumerStatefulWidget {
  const CreatePostScreen({super.key});

  @override
  ConsumerState createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends ConsumerState<CreatePostScreen> {
  late AppLocalizations localizations;
  late ThemeData theme;
  final draggableSheetController = DraggableScrollableController();

  @override
  void didChangeDependencies() {
    localizations = AppLocalizations.of(context);
    theme = Theme.of(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(createPostProvider);
    final file = ref.watch(pickedFileProvider);
    final user = ref.watch(userProvider);
    return Scaffold(
      appBar: AppBar(
        leading: const CloseButton(),
        title: Text(
          localizations.createPost,
          style: theme.textTheme.headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [PostButton()],
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          draggableSheetController.animateTo(
            0,
            duration: const Duration(milliseconds: 200),
            curve: Curves.linear,
          );
          return false;
        },
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: getValueForScreenType(
              context: context,
              mobile: 16,
              tablet: (MediaQuery.sizeOf(context).width - 640) / 2,
            ),
          ),
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                leading: CircleAvatar(
                  radius: 24,
                  backgroundImage:
                      AssetImage(Assets.images.defaultAvatar.keyName),
                ),
                title: Text(
                  user.requireValue.nickName,
                  style: theme.textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(localizations.public),
              ),
              const ContentTextField(),
              const SizedBox(height: 32),
              if (file != null) UploadingImage(file),
              const SizedBox(height: 112),
            ],
          ),
        ),
      ),
      bottomSheet: LayoutBuilder(
        builder: (context, constraint) {
          final minSize = 96 / constraint.maxHeight;
          return DraggableScrollableSheet(
            controller: draggableSheetController,
            minChildSize: minSize,
            maxChildSize: 0.9,
            initialChildSize: 0.4,
            snap: true,
            snapSizes: [minSize, 0.4, 0.9],
            expand: false,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerLow,
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.shadow.withOpacity(0.32),
                      blurRadius: 8,
                    ),
                  ],
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(28)),
                ),
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  controller: scrollController,
                  children: [
                    Align(
                      child: Container(
                        height: 4,
                        width: 32,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.outline,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const UploadImageMenuButton(),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
