import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_form.freezed.dart';
part 'comment_form.g.dart';

@freezed
class CommentForm with _$CommentForm {
  factory CommentForm({
    required int postId,
    required String content,
  }) = _CommentForm;

  factory CommentForm.fromJson(Map<String, Object?> json) =>
      _$CommentFormFromJson(json);
}
