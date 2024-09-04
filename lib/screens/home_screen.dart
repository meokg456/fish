import 'package:fish/models/post.dart';
import 'package:fish/riverpods/posts.dart';
import 'package:fish/screens/post_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();

    ref.listenManual(postsProvider, (_, value) {
      if (value.hasError) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<Post>> postsValue = ref.watch(postsProvider);
    return Scaffold(
      body: switch (postsValue) {
        AsyncData(:final value) => ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 16),
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
      },
    );
  }
}
