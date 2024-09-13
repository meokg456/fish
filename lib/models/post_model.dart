import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  factory PostModel({
    @Default("") String author,
    required String avatarUrl,
    required DateTime postAt,
    @Default("") String content,
    required String imageUrl,
    @Default(0) int likes,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, Object?> json) =>
      _$PostModelFromJson(json);
}
