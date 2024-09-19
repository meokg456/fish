import 'package:fish/models/domain/comment_model.dart';
import 'package:fish/repositories/comment_repository.dart';
import 'package:fish/riverpods/comment/comments.dart';
import 'package:fish/riverpods/enums/validate_errors.dart';
import 'package:fish/riverpods/forms/comment_form.dart';
import 'package:fish/riverpods/user/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'comment.g.dart';

const commentSideEffectId = 'comment';

@riverpod
class Comment extends _$Comment {
  late final CommentRepository _commentRepository =
      ref.watch(commentRepositoryProvider);

  @override
  CommentForm build(int postId) {
    return CommentForm(postId: postId, content: "");
  }

  Future<void> comment() async {
    await _commentRepository.comment(state);
    final user = ref.read(userProvider).requireValue;
    ref.read(commentsProvider(state.postId).notifier).addComment(
          CommentModel(
            authorId: 0,
            authorName: user.nickName,
            authorAvatar: user.avatarUrl,
            content: state.content,
          ),
        );
    ref.invalidate(commentsProvider(state.postId));
  }

  void updateContent(String content) {
    state = state.copyWith(content: content);
  }

  ValidateErrors validate() {
    if (state.content.trim().isEmpty) {
      return ValidateErrors.empty;
    }
    return ValidateErrors.none;
  }
}
