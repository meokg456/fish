import 'package:fish/app/router.dart';
import 'package:fish/models/domain/post_model.dart';
import 'package:fish/riverpods/app/app_setting.dart';
import 'package:fish/riverpods/post/post_data.dart';
import 'package:fish/riverpods/post/post_pagination.dart';
import 'package:fish/riverpods/post/posts.dart';
import 'package:fish/screens/home_screen/tabs/home_tab/widgets/create_post.dart';
import 'package:fish/screens/home_screen/tabs/home_tab/widgets/post_card.dart';
import 'package:fish/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeTab extends ConsumerStatefulWidget {
  const HomeTab({super.key});

  @override
  ConsumerState createState() => _HomeTabState();
}

class _HomeTabState extends ConsumerState<HomeTab> {
  late ThemeData theme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    theme = Theme.of(context);
  }

  void onTap(int id) {
    context.push(Routes.postDetail(id: id));
  }

  void onLiked(int id) {
    ref.read(postDataProvider.notifier).like(id);
  }

  @override
  Widget build(BuildContext context) {
    final pagination = ref.watch(postPaginationProvider);
    final postsWidget = <Widget>[];
    final postData = ref.watch(postDataProvider);
    for (int page = 1; page <= pagination.current; page++) {
      final postsValue = ref.watch(postsProvider(page));
      if (postsValue is AsyncData) {
        final postIds = postsValue.requireValue;
        for (final postId in postIds) {
          final post = postData[postId]!;
          postsWidget.add(
            PostCard(
              post,
              onTap: () => onTap(postId),
              onLiked: () => onLiked(postId),
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
    }

    final appName =
        ref.watch(appSettingProvider.select((setting) => setting.appName));

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.account_circle_outlined),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      body: NotificationListener<ScrollEndNotification>(
        onNotification: (notification) {
          ref.read(postPaginationProvider.notifier).nextPage();
          return false;
        },
        child: RefreshIndicator(
          onRefresh: () async => ref.invalidate(postPaginationProvider),
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: Utils.horizontalPadding(context),
            ),
            children: [
              Text(
                appName,
                style: theme.textTheme.headlineSmall
                    ?.copyWith(color: theme.colorScheme.primary),
              ),
              const SizedBox(height: 24),
              const CreatePost(),
              const SizedBox(height: 8),
              ...postsWidget,
            ],
          ),
        ),
      ),
    );
  }
}
