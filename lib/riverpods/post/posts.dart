import 'package:fish/models/domain/post_model.dart';
import 'package:fish/repositories/post_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'posts.g.dart';

@riverpod
class Posts extends _$Posts {
  late final PostRepository _postRepository = ref.watch(postRepositoryProvider);

  @override
  Future<List<PostModel>> build(int page) {
    return _postRepository.getPosts(page);
  }

  Future<void> like(int index) async {
    final posts = state.requireValue;
    final isLiked = await _postRepository.liked(posts[index].id);
    final post = posts[index];
    posts[index] = post.copyWith(
      isLiked: isLiked,
      numLikes: post.numLikes + (isLiked ? 1 : -1),
    );
    state = AsyncData(posts);
  }

  void updatePost(PostModel post, int index) {
    final posts = state.requireValue;
    posts[index] = post;
    state = AsyncData(posts);
  }
}
