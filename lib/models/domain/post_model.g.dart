// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostModelImpl _$$PostModelImplFromJson(Map<String, dynamic> json) =>
    _$PostModelImpl(
      id: (json['postId'] as num).toInt(),
      author: json['authorName'] as String? ?? "",
      avatarUrl: json['authorAvatar'] as String,
      postAt: DateTime.parse(json['createTime'] as String),
      content: json['content'] as String? ?? "",
      mediaUrl: json['mediaLink'] as String,
      numLikes: (json['numLikes'] as num?)?.toInt() ?? 0,
      isLiked: json['isLiked'] as bool? ?? false,
    );

Map<String, dynamic> _$$PostModelImplToJson(_$PostModelImpl instance) =>
    <String, dynamic>{
      'postId': instance.id,
      'authorName': instance.author,
      'authorAvatar': instance.avatarUrl,
      'createTime': instance.postAt.toIso8601String(),
      'content': instance.content,
      'mediaLink': instance.mediaUrl,
      'numLikes': instance.numLikes,
      'isLiked': instance.isLiked,
    };
