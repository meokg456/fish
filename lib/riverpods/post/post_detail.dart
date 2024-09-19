import 'package:fish/models/domain/post_model.dart';
import 'package:fish/repositories/post_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_detail.g.dart';

@riverpod
class PostDetail extends _$PostDetail {
  late final PostRepository _postRepository = ref.watch(postRepositoryProvider);

  @override
  Future<PostModel> build(int id) {
    return _postRepository.getPost(id);
  }

  Future<void> like() async {
    final post = state.requireValue;
    final isLiked = await _postRepository.liked(post.id);
    state = AsyncData(
      post.copyWith(
        isLiked: isLiked,
        numLikes: post.numLikes + (isLiked ? 1 : -1),
      ),
    );
  }
}
