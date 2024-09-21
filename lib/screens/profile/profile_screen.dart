import 'package:fish/app/router.dart';
import 'package:fish/gen/assets.gen.dart';
import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/models/domain/post_model.dart';
import 'package:fish/models/enums/gender.dart';
import 'package:fish/riverpods/post/posts.dart';
import 'package:fish/riverpods/user/user_profile.dart';
import 'package:fish/screens/home_screen/tabs/home_tab/widgets/post_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen(this.userId, {super.key});

  final int userId;

  @override
  ConsumerState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  late AppLocalizations localizations;
  late ThemeData theme;

  @override
  void didChangeDependencies() {
    localizations = AppLocalizations.of(context);
    theme = Theme.of(context);
    super.didChangeDependencies();
  }

  void onTap(int index) {
    final id = ref.read(postsProvider(0, widget.userId)).requireValue[index].id;
    context.push(Routes.postDetail(id: id));
  }

  void onLiked(int index) {
    ref.read(postsProvider(0, widget.userId).notifier).like(index);
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userProfileProvider(widget.userId));
    final postsWidget = <Widget>[];
    final postsValue = ref.watch(postsProvider(0, widget.userId));
    if (postsValue is AsyncData) {
      final posts = postsValue.requireValue;
      for (int i = 0; i < posts.length; i++) {
        final post = posts[i];
        postsWidget.add(
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: PostCard(
              post,
              onTap: () => onTap(i),
              onLiked: () => onLiked(i),
            ),
          ),
        );
        postsWidget.add(const SizedBox(height: 8));
      }
    }
    if (postsValue is AsyncLoading) {
      postsWidget.add(
        const SizedBox(
          height: 96,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    }
    final theme = Theme.of(context);

    return switch (user) {
      AsyncData(:final value) => Scaffold(
          appBar: AppBar(
            title: Text(
              value.nickName,
              style: theme.textTheme.bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: ListView(
            cacheExtent: 10000,
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 240,
                        width: double.infinity,
                        child: Image.asset(
                          Assets.images.userBackground.keyName,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      const SizedBox(height: 48),
                    ],
                  ),
                  Positioned(
                    left: 16,
                    bottom: 0,
                    child: CircleAvatar(
                      backgroundImage: value.avatarUrl.isEmpty
                          ? AssetImage(Assets.images.defaultAvatar.keyName)
                          : NetworkImage(value.avatarUrl),
                      radius: 96,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  value.nickName,
                  style: theme.textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: FilledButton(
                  onPressed: () {},
                  child: Text(localizations.addFriend),
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  localizations.detail,
                  style: theme.textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  child: Icon(
                    Icons.person,
                    size: 24,
                  ),
                ),
                title: Text(
                  value.gender == Gender.male
                      ? localizations.male
                      : localizations.female,
                  style: theme.textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(localizations.gender),
              ),
              ListTile(
                minVerticalPadding: 0,
                minTileHeight: 0,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                leading: const CircleAvatar(
                  child: Icon(
                    Icons.cake_rounded,
                    size: 24,
                  ),
                ),
                title: Text(
                  DateFormat.yMMMd(localizations.localeName)
                      .format(value.dateOfBirth),
                  style: theme.textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(localizations.dateOfBirth),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  localizations.yourPosts,
                  style: theme.textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              ...postsWidget,
            ],
          ),
        ),
      _ => Scaffold(
          appBar: AppBar(),
        ),
    };
  }
}
