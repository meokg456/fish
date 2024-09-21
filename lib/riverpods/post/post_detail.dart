import 'package:fish/models/domain/post_model.dart';
import 'package:fish/repositories/post_repository.dart';
import 'package:fish/riverpods/post/posts.dart';
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
    final updatedPost = post.copyWith(
      isLiked: isLiked,
      numLikes: post.numLikes + (isLiked ? 1 : -1),
    );
    state = AsyncData(updatedPost);
    ref.read(postsProvider(0).notifier).sync(updatedPost);
  }
}
