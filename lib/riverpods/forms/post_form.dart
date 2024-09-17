import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_form.freezed.dart';
part 'post_form.g.dart';

@freezed
class PostForm with _$PostForm {
  factory PostForm({
    @Default("") String content,
    String? mediaLink,
  }) = _PostForm;

  factory PostForm.fromJson(Map<String, Object?> json) =>
      _$PostFormFromJson(json);
}
