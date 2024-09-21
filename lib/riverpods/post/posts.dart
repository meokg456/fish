import 'package:fish/models/domain/post_model.dart';
import 'package:fish/repositories/post_repository.dart';
import 'package:fish/riverpods/post/post_pagination.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'posts.g.dart';

@riverpod
class Posts extends _$Posts {
  late final PostRepository _postRepository = ref.watch(postRepositoryProvider);

  @override
  Future<List<PostModel>> build(int page, [int? userId]) {
    if (userId != null) {
      return _postRepository.getUserPosts(userId);
    }
    return _postRepository.getPosts(page);
  }

  Future<void> like(int index) async {
    final posts = state.requireValue;
    final isLiked = await _postRepository.liked(posts[index].id);
    final post = posts[index];
    final updatedPost = post.copyWith(
      isLiked: isLiked,
      numLikes: post.numLikes + (isLiked ? 1 : -1),
    );
    posts[index] = updatedPost;
    state = AsyncData(posts);
    if (userId != null) {
      sync(updatedPost);
    }
  }

  void sync(PostModel updatedPost) {
    if (!ref.exists(postPaginationProvider)) {
      return;
    }

    final pagination = ref.read(postPaginationProvider);
    for (int page = 1; page <= pagination.total; page++) {
      final postStatus = ref.read(postsProvider(page));

      if (postStatus is AsyncData) {
        final posts = postStatus.requireValue;

        for (int index = 0; index < posts.length; index++) {
          final post = posts[index];

          if (updatedPost.id == post.id) {
            ref
                .read(postsProvider(page).notifier)
                .updatePost(updatedPost, index);
            return;
          }
        }
      }
    }
  }

  void updatePost(PostModel post, int index) {
    final posts = state.requireValue;
    posts[index] = post;
    state = AsyncData(posts);
  }
}
