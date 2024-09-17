import 'package:fish/models/post_model.dart';
import 'package:fish/riverpods/app/app_setting.dart';
import 'package:fish/riverpods/post/posts.dart';
import 'package:fish/screens/home_screen/tabs/home_tab/widgets/create_post.dart';
import 'package:fish/screens/home_screen/tabs/home_tab/widgets/post_card.dart';
import 'package:fish/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<PostModel>> postsValue = ref.watch(postsProvider);
    final appName =
        ref.watch(appSettingProvider.select((setting) => setting.appName));

    final postsWidget = <Widget>[];

    if (postsValue is AsyncData) {
      final posts = postsValue.requireValue;
      for (int i = 0; i < posts.length; i++) {
        postsWidget.add(PostCard(model: posts[i]));
        postsWidget.add(const SizedBox(height: 8));
      }
    }

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
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(postsProvider.future),
        child: ListView(
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
            if (postsValue is AsyncData) ...postsWidget,
            if (postsValue is AsyncLoading)
              const SizedBox(
                height: 96,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
