import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  factory PostModel({
    @JsonKey(name: 'postId') required int id,
    @JsonKey(name: 'authorName') @Default("") String author,
    @JsonKey(name: 'authorAvatar') required String avatarUrl,
    @JsonKey(name: 'createTime') required DateTime postAt,
    @Default("") String content,
    @JsonKey(name: 'mediaLink') required String mediaUrl,
    @Default(0) int numLikes,
    @Default(false) bool isLiked,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, Object?> json) =>
      _$PostModelFromJson(json);
}
