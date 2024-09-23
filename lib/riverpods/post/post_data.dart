import 'package:fish/models/domain/post_model.dart';
import 'package:fish/repositories/post_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_data.g.dart';

@riverpod
class PostData extends _$PostData {
  late final PostRepository _postRepository = ref.watch(postRepositoryProvider);

  @override
  Map<int, PostModel> build() {
    return {};
  }

  Future<void> like(int postId) async {
    final isLiked = await _postRepository.like(postId);
    if (!state.containsKey(postId)) {
      return;
    }
    final post = state[postId]!;
    final updatedPost = post.copyWith(
      isLiked: isLiked,
      numLikes: post.numLikes + (isLiked ? 1 : -1),
    );
    state = {...state, updatedPost.id: updatedPost};
  }

  void updatePost(PostModel post) {
    state = {...state, post.id: post};
  }

  void addAll(List<PostModel> posts) {
    final data = {for (final post in posts) post.id: post};
    state = {...state, ...data};
  }
}
