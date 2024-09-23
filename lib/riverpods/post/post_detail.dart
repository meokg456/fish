import 'package:fish/models/domain/post_model.dart';
import 'package:fish/repositories/post_repository.dart';
import 'package:fish/riverpods/post/post_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_detail.g.dart';

@riverpod
class PostDetail extends _$PostDetail {
  late final PostRepository _postRepository = ref.watch(postRepositoryProvider);

  @override
  Future<PostModel> build(int id) async {
    final post = await _postRepository.getPost(id);
    ref.read(postDataProvider.notifier).updatePost(post);
    return post;
  }

  Future<void> like() async {
    await ref.read(postDataProvider.notifier).like(id);
    ref.invalidateSelf();
  }
}
