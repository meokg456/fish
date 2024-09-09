// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginForm _$LoginFormFromJson(Map<String, dynamic> json) {
  return _LoginForm.fromJson(json);
}

/// @nodoc
mixin _$LoginForm {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this LoginForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginFormCopyWith<LoginForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormCopyWith<$Res> {
  factory $LoginFormCopyWith(LoginForm value, $Res Function(LoginForm) then) =
      _$LoginFormCopyWithImpl<$Res, LoginForm>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginFormCopyWithImpl<$Res, $Val extends LoginForm>
    implements $LoginFormCopyWith<$Res> {
  _$LoginFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginFormImplCopyWith<$Res>
    implements $LoginFormCopyWith<$Res> {
  factory _$$LoginFormImplCopyWith(
          _$LoginFormImpl value, $Res Function(_$LoginFormImpl) then) =
      __$$LoginFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$LoginFormImplCopyWithImpl<$Res>
    extends _$LoginFormCopyWithImpl<$Res, _$LoginFormImpl>
    implements _$$LoginFormImplCopyWith<$Res> {
  __$$LoginFormImplCopyWithImpl(
      _$LoginFormImpl _value, $Res Function(_$LoginFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$LoginFormImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginFormImpl implements _LoginForm {
  _$LoginFormImpl({this.username = "", this.password = ""});

  factory _$LoginFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginFormImplFromJson(json);

  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'LoginForm(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFormImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of LoginForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFormImplCopyWith<_$LoginFormImpl> get copyWith =>
      __$$LoginFormImplCopyWithImpl<_$LoginFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginFormImplToJson(
      this,
    );
  }
}

abstract class _LoginForm implements LoginForm {
  factory _LoginForm({final String username, final String password}) =
      _$LoginFormImpl;

  factory _LoginForm.fromJson(Map<String, dynamic> json) =
      _$LoginFormImpl.fromJson;

  @override
  String get username;
  @override
  String get password;

  /// Create a copy of LoginForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginFormImplCopyWith<_$LoginFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
