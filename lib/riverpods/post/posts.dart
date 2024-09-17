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
}
