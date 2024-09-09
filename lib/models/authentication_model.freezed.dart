// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticationModel _$AuthenticationModelFromJson(Map<String, dynamic> json) {
  return _AuthenticationModel.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationModel {
  User? get user => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  /// Serializes this AuthenticationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthenticationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthenticationModelCopyWith<AuthenticationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationModelCopyWith<$Res> {
  factory $AuthenticationModelCopyWith(
          AuthenticationModel value, $Res Function(AuthenticationModel) then) =
      _$AuthenticationModelCopyWithImpl<$Res, AuthenticationModel>;
  @useResult
  $Res call({User? user, String? token});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthenticationModelCopyWithImpl<$Res, $Val extends AuthenticationModel>
    implements $AuthenticationModelCopyWith<$Res> {
  _$AuthenticationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AuthenticationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthenticationModelImplCopyWith<$Res>
    implements $AuthenticationModelCopyWith<$Res> {
  factory _$$AuthenticationModelImplCopyWith(_$AuthenticationModelImpl value,
          $Res Function(_$AuthenticationModelImpl) then) =
      __$$AuthenticationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, String? token});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthenticationModelImplCopyWithImpl<$Res>
    extends _$AuthenticationModelCopyWithImpl<$Res, _$AuthenticationModelImpl>
    implements _$$AuthenticationModelImplCopyWith<$Res> {
  __$$AuthenticationModelImplCopyWithImpl(_$AuthenticationModelImpl _value,
      $Res Function(_$AuthenticationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_$AuthenticationModelImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationModelImpl implements _AuthenticationModel {
  _$AuthenticationModelImpl({this.user, this.token});

  factory _$AuthenticationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationModelImplFromJson(json);

  @override
  final User? user;
  @override
  final String? token;

  @override
  String toString() {
    return 'AuthenticationModel(user: $user, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationModelImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  /// Create a copy of AuthenticationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationModelImplCopyWith<_$AuthenticationModelImpl> get copyWith =>
      __$$AuthenticationModelImplCopyWithImpl<_$AuthenticationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationModelImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationModel implements AuthenticationModel {
  factory _AuthenticationModel({final User? user, final String? token}) =
      _$AuthenticationModelImpl;

  factory _AuthenticationModel.fromJson(Map<String, dynamic> json) =
      _$AuthenticationModelImpl.fromJson;

  @override
  User? get user;
  @override
  String? get token;

  /// Create a copy of AuthenticationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationModelImplCopyWith<_$AuthenticationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
