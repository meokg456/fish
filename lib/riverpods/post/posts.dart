import 'package:fish/models/domain/post_model.dart';
import 'package:fish/repositories/post_repository.dart';
import 'package:fish/riverpods/post/post_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'posts.g.dart';

@riverpod
class Posts extends _$Posts {
  late final PostRepository _postRepository = ref.watch(postRepositoryProvider);

  @override
  Future<List<int>> build(int page, [int? userId]) async {
    List<PostModel> posts = [];

    if (userId != null) {
      posts = await _postRepository.getUserPosts(userId);
    } else {
      posts = await _postRepository.getPosts(page);
    }
    ref.read(postDataProvider.notifier).addAll(posts);

    return posts.map((post) => post.id).toList();
  }
}
