// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentFormImpl _$$CommentFormImplFromJson(Map<String, dynamic> json) =>
    _$CommentFormImpl(
      postId: (json['postId'] as num).toInt(),
      content: json['content'] as String,
    );

Map<String, dynamic> _$$CommentFormImplToJson(_$CommentFormImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'content': instance.content,
    };
