// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return _PostModel.fromJson(json);
}

/// @nodoc
mixin _$PostModel {
  @JsonKey(name: 'postId')
  int get id => throw _privateConstructorUsedError;
  int get authorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'authorName')
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'authorAvatar')
  String get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'createTime')
  DateTime get postAt => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'mediaLink', fromJson: mediaUrlFromJson)
  String? get mediaUrl => throw _privateConstructorUsedError;
  int get numLikes => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;

  /// Serializes this PostModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'postId') int id,
      int authorId,
      @JsonKey(name: 'authorName') String author,
      @JsonKey(name: 'authorAvatar') String avatarUrl,
      @JsonKey(name: 'createTime') DateTime postAt,
      String content,
      @JsonKey(name: 'mediaLink', fromJson: mediaUrlFromJson) String? mediaUrl,
      int numLikes,
      bool isLiked});
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorId = null,
    Object? author = null,
    Object? avatarUrl = null,
    Object? postAt = null,
    Object? content = null,
    Object? mediaUrl = freezed,
    Object? numLikes = null,
    Object? isLiked = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      postAt: null == postAt
          ? _value.postAt
          : postAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrl: freezed == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      numLikes: null == numLikes
          ? _value.numLikes
          : numLikes // ignore: cast_nullable_to_non_nullable
              as int,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostModelImplCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$$PostModelImplCopyWith(
          _$PostModelImpl value, $Res Function(_$PostModelImpl) then) =
      __$$PostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'postId') int id,
      int authorId,
      @JsonKey(name: 'authorName') String author,
      @JsonKey(name: 'authorAvatar') String avatarUrl,
      @JsonKey(name: 'createTime') DateTime postAt,
      String content,
      @JsonKey(name: 'mediaLink', fromJson: mediaUrlFromJson) String? mediaUrl,
      int numLikes,
      bool isLiked});
}

/// @nodoc
class __$$PostModelImplCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$PostModelImpl>
    implements _$$PostModelImplCopyWith<$Res> {
  __$$PostModelImplCopyWithImpl(
      _$PostModelImpl _value, $Res Function(_$PostModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorId = null,
    Object? author = null,
    Object? avatarUrl = null,
    Object? postAt = null,
    Object? content = null,
    Object? mediaUrl = freezed,
    Object? numLikes = null,
    Object? isLiked = null,
  }) {
    return _then(_$PostModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      postAt: null == postAt
          ? _value.postAt
          : postAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrl: freezed == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      numLikes: null == numLikes
          ? _value.numLikes
          : numLikes // ignore: cast_nullable_to_non_nullable
              as int,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostModelImpl implements _PostModel {
  _$PostModelImpl(
      {@JsonKey(name: 'postId') required this.id,
      required this.authorId,
      @JsonKey(name: 'authorName') this.author = "",
      @JsonKey(name: 'authorAvatar') required this.avatarUrl,
      @JsonKey(name: 'createTime') required this.postAt,
      this.content = "",
      @JsonKey(name: 'mediaLink', fromJson: mediaUrlFromJson) this.mediaUrl,
      this.numLikes = 0,
      this.isLiked = false});

  factory _$PostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostModelImplFromJson(json);

  @override
  @JsonKey(name: 'postId')
  final int id;
  @override
  final int authorId;
  @override
  @JsonKey(name: 'authorName')
  final String author;
  @override
  @JsonKey(name: 'authorAvatar')
  final String avatarUrl;
  @override
  @JsonKey(name: 'createTime')
  final DateTime postAt;
  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey(name: 'mediaLink', fromJson: mediaUrlFromJson)
  final String? mediaUrl;
  @override
  @JsonKey()
  final int numLikes;
  @override
  @JsonKey()
  final bool isLiked;

  @override
  String toString() {
    return 'PostModel(id: $id, authorId: $authorId, author: $author, avatarUrl: $avatarUrl, postAt: $postAt, content: $content, mediaUrl: $mediaUrl, numLikes: $numLikes, isLiked: $isLiked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.postAt, postAt) || other.postAt == postAt) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.mediaUrl, mediaUrl) ||
                other.mediaUrl == mediaUrl) &&
            (identical(other.numLikes, numLikes) ||
                other.numLikes == numLikes) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, authorId, author, avatarUrl,
      postAt, content, mediaUrl, numLikes, isLiked);

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      __$$PostModelImplCopyWithImpl<_$PostModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostModelImplToJson(
      this,
    );
  }
}

abstract class _PostModel implements PostModel {
  factory _PostModel(
      {@JsonKey(name: 'postId') required final int id,
      required final int authorId,
      @JsonKey(name: 'authorName') final String author,
      @JsonKey(name: 'authorAvatar') required final String avatarUrl,
      @JsonKey(name: 'createTime') required final DateTime postAt,
      final String content,
      @JsonKey(name: 'mediaLink', fromJson: mediaUrlFromJson)
      final String? mediaUrl,
      final int numLikes,
      final bool isLiked}) = _$PostModelImpl;

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$PostModelImpl.fromJson;

  @override
  @JsonKey(name: 'postId')
  int get id;
  @override
  int get authorId;
  @override
  @JsonKey(name: 'authorName')
  String get author;
  @override
  @JsonKey(name: 'authorAvatar')
  String get avatarUrl;
  @override
  @JsonKey(name: 'createTime')
  DateTime get postAt;
  @override
  String get content;
  @override
  @JsonKey(name: 'mediaLink', fromJson: mediaUrlFromJson)
  String? get mediaUrl;
  @override
  int get numLikes;
  @override
  bool get isLiked;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
