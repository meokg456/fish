// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      author: json['author'] as String? ?? "",
      avatarUrl: json['avatarUrl'] as String,
      postAt: DateTime.parse(json['postAt'] as String),
      content: json['content'] as String? ?? "",
      imageUrl: json['imageUrl'] as String,
      likes: (json['likes'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'avatarUrl': instance.avatarUrl,
      'postAt': instance.postAt.toIso8601String(),
      'content': instance.content,
      'imageUrl': instance.imageUrl,
      'likes': instance.likes,
    };
