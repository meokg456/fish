// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostModelImpl _$$PostModelImplFromJson(Map<String, dynamic> json) =>
    _$PostModelImpl(
      author: json['author'] as String? ?? "",
      avatarUrl: json['avatarUrl'] as String,
      postAt: DateTime.parse(json['postAt'] as String),
      content: json['content'] as String? ?? "",
      imageUrl: json['imageUrl'] as String,
      likes: (json['likes'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PostModelImplToJson(_$PostModelImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'avatarUrl': instance.avatarUrl,
      'postAt': instance.postAt.toIso8601String(),
      'content': instance.content,
      'imageUrl': instance.imageUrl,
      'likes': instance.likes,
    };
