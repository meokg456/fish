import 'package:fish/repositories/post_repository.dart';
import 'package:fish/riverpods/enums/validate_errors.dart';
import 'package:fish/riverpods/forms/post_form.dart';
import 'package:fish/riverpods/post/posts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_post.g.dart';

const createPostSideEffectId = 'create_post';

@riverpod
class CreatePost extends _$CreatePost {
  late final PostRepository _postRepository = ref.watch(postRepositoryProvider);

  @override
  PostForm build() {
    return PostForm();
  }

  void updateForm(PostForm form) {
    state = form;
  }

  Future<void> createPost() async {
    await _postRepository.createPost(state);
    ref.invalidate(postsProvider);
  }

  ValidateErrors validatePost() {
    if (state.content.isEmpty && state.mediaLink == null) {
      return ValidateErrors.empty;
    }
    return ValidateErrors.none;
  }
}
