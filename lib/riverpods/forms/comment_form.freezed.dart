// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentForm _$CommentFormFromJson(Map<String, dynamic> json) {
  return _CommentForm.fromJson(json);
}

/// @nodoc
mixin _$CommentForm {
  int get postId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this CommentForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentFormCopyWith<CommentForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentFormCopyWith<$Res> {
  factory $CommentFormCopyWith(
          CommentForm value, $Res Function(CommentForm) then) =
      _$CommentFormCopyWithImpl<$Res, CommentForm>;
  @useResult
  $Res call({int postId, String content});
}

/// @nodoc
class _$CommentFormCopyWithImpl<$Res, $Val extends CommentForm>
    implements $CommentFormCopyWith<$Res> {
  _$CommentFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentFormImplCopyWith<$Res>
    implements $CommentFormCopyWith<$Res> {
  factory _$$CommentFormImplCopyWith(
          _$CommentFormImpl value, $Res Function(_$CommentFormImpl) then) =
      __$$CommentFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int postId, String content});
}

/// @nodoc
class __$$CommentFormImplCopyWithImpl<$Res>
    extends _$CommentFormCopyWithImpl<$Res, _$CommentFormImpl>
    implements _$$CommentFormImplCopyWith<$Res> {
  __$$CommentFormImplCopyWithImpl(
      _$CommentFormImpl _value, $Res Function(_$CommentFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? content = null,
  }) {
    return _then(_$CommentFormImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentFormImpl implements _CommentForm {
  _$CommentFormImpl({required this.postId, required this.content});

  factory _$CommentFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentFormImplFromJson(json);

  @override
  final int postId;
  @override
  final String content;

  @override
  String toString() {
    return 'CommentForm(postId: $postId, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentFormImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, postId, content);

  /// Create a copy of CommentForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentFormImplCopyWith<_$CommentFormImpl> get copyWith =>
      __$$CommentFormImplCopyWithImpl<_$CommentFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentFormImplToJson(
      this,
    );
  }
}

abstract class _CommentForm implements CommentForm {
  factory _CommentForm(
      {required final int postId,
      required final String content}) = _$CommentFormImpl;

  factory _CommentForm.fromJson(Map<String, dynamic> json) =
      _$CommentFormImpl.fromJson;

  @override
  int get postId;
  @override
  String get content;

  /// Create a copy of CommentForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentFormImplCopyWith<_$CommentFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
