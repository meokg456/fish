import 'package:fish/models/post.dart';
import 'package:fish/riverpods/posts.dart';
import 'package:fish/screens/home_screen/tabs/home_tab/post_card.dart';
import 'package:fish/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeTab extends ConsumerStatefulWidget {
  const HomeTab({super.key});

  @override
  ConsumerState createState() => _HomeTabState();
}

class _HomeTabState extends ConsumerState<HomeTab> {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<Post>> postsValue = ref.watch(postsProvider);

    return switch (postsValue) {
      AsyncData(:final value) => ListView.separated(
          padding: EdgeInsets.symmetric(
            horizontal: Utils.horizontalPadding(context),
            vertical: 16,
          ),
          itemCount: value.length,
          itemBuilder: (context, index) => PostCard(
            model: value[index],
          ),
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 16);
          },
        ),
      AsyncError() => Container(),
      _ => const Center(
          child: CircularProgressIndicator(),
        ),
    };
  }
}
