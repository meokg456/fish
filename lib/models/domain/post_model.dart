import 'package:fish/app/flavor_config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

String? mediaUrlFromJson(String? json) {
  return json?.replaceAll(
    'http://localhost:9200',
    FlavorConfig.instance.values.uploadUrl,
  );
}

@freezed
class PostModel with _$PostModel {
  factory PostModel({
    @JsonKey(name: 'postId') required int id,
    @JsonKey(name: 'authorName') @Default("") String author,
    @JsonKey(name: 'authorAvatar') required String avatarUrl,
    @JsonKey(name: 'createTime') required DateTime postAt,
    @Default("") String content,
    @JsonKey(name: 'mediaLink', fromJson: mediaUrlFromJson) String? mediaUrl,
    @Default(0) int numLikes,
    @Default(false) bool isLiked,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, Object?> json) =>
      _$PostModelFromJson(json);
}
