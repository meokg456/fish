import 'package:fish/models/domain/comment_model.dart';
import 'package:fish/repositories/comment_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'comments.g.dart';

@riverpod
class Comments extends _$Comments {
  late final CommentRepository _commentRepository =
      ref.watch(commentRepositoryProvider);

  @override
  Future<List<CommentModel>> build(int postId) {
    return _commentRepository.getCommentsByPostId(postId);
  }

  void addComment(CommentModel comment) {
    final comments = state.value ?? [];
    comments.add(comment);
    state = AsyncData(comments);
  }
}
