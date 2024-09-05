import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  factory Post({
    @Default("") String author,
    required String avatarUrl,
    required DateTime postAt,
    @Default("") String content,
    required String imageUrl,
    @Default(0) int likes,
  }) = _Post;

  factory Post.fromJson(Map<String, Object?> json) => _$PostFromJson(json);
}
