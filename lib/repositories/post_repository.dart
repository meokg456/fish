import 'package:fish/models/post.dart';
import 'package:fish/services/post/remote_post_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_repository.g.dart';

@riverpod
PostRepository postRepository(PostRepositoryRef ref) =>
    PostRepositoryImpl(ref.watch(remotePostServiceProvider));

abstract class PostRepository {
  Future<List<Post>> getPosts();
}

class PostRepositoryImpl implements PostRepository {
  final RemotePostService _postService;

  PostRepositoryImpl(this._postService);

  @override
  Future<List<Post>> getPosts() {
    return _postService.getPosts();
  }
}
