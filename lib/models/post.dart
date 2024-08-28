import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  factory Post({required String author, required String content}) = _Post;

  factory Post.fromJson(Map<String, Object?> json) => _$PostFromJson(json);
}
