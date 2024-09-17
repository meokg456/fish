// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostForm _$PostFormFromJson(Map<String, dynamic> json) {
  return _PostForm.fromJson(json);
}

/// @nodoc
mixin _$PostForm {
  String get content => throw _privateConstructorUsedError;
  String? get mediaLink => throw _privateConstructorUsedError;

  /// Serializes this PostForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostFormCopyWith<PostForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFormCopyWith<$Res> {
  factory $PostFormCopyWith(PostForm value, $Res Function(PostForm) then) =
      _$PostFormCopyWithImpl<$Res, PostForm>;
  @useResult
  $Res call({String content, String? mediaLink});
}

/// @nodoc
class _$PostFormCopyWithImpl<$Res, $Val extends PostForm>
    implements $PostFormCopyWith<$Res> {
  _$PostFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? mediaLink = freezed,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      mediaLink: freezed == mediaLink
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostFormImplCopyWith<$Res>
    implements $PostFormCopyWith<$Res> {
  factory _$$PostFormImplCopyWith(
          _$PostFormImpl value, $Res Function(_$PostFormImpl) then) =
      __$$PostFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, String? mediaLink});
}

/// @nodoc
class __$$PostFormImplCopyWithImpl<$Res>
    extends _$PostFormCopyWithImpl<$Res, _$PostFormImpl>
    implements _$$PostFormImplCopyWith<$Res> {
  __$$PostFormImplCopyWithImpl(
      _$PostFormImpl _value, $Res Function(_$PostFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? mediaLink = freezed,
  }) {
    return _then(_$PostFormImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      mediaLink: freezed == mediaLink
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostFormImpl implements _PostForm {
  _$PostFormImpl({this.content = "", this.mediaLink});

  factory _$PostFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostFormImplFromJson(json);

  @override
  @JsonKey()
  final String content;
  @override
  final String? mediaLink;

  @override
  String toString() {
    return 'PostForm(content: $content, mediaLink: $mediaLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostFormImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.mediaLink, mediaLink) ||
                other.mediaLink == mediaLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, mediaLink);

  /// Create a copy of PostForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostFormImplCopyWith<_$PostFormImpl> get copyWith =>
      __$$PostFormImplCopyWithImpl<_$PostFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostFormImplToJson(
      this,
    );
  }
}

abstract class _PostForm implements PostForm {
  factory _PostForm({final String content, final String? mediaLink}) =
      _$PostFormImpl;

  factory _PostForm.fromJson(Map<String, dynamic> json) =
      _$PostFormImpl.fromJson;

  @override
  String get content;
  @override
  String? get mediaLink;

  /// Create a copy of PostForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostFormImplCopyWith<_$PostFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
