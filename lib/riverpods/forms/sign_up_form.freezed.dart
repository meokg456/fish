// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpForm _$SignUpFormFromJson(Map<String, dynamic> json) {
  return _SignUpForm.fromJson(json);
}

/// @nodoc
mixin _$SignUpForm {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'sex', toJson: genderToJson)
  Gender? get gender => throw _privateConstructorUsedError;

  /// Serializes this SignUpForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpFormCopyWith<SignUpForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormCopyWith<$Res> {
  factory $SignUpFormCopyWith(
          SignUpForm value, $Res Function(SignUpForm) then) =
      _$SignUpFormCopyWithImpl<$Res, SignUpForm>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String username,
      String password,
      String confirmPassword,
      DateTime? dateOfBirth,
      @JsonKey(name: 'sex', toJson: genderToJson) Gender? gender});
}

/// @nodoc
class _$SignUpFormCopyWithImpl<$Res, $Val extends SignUpForm>
    implements $SignUpFormCopyWith<$Res> {
  _$SignUpFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpFormImplCopyWith<$Res>
    implements $SignUpFormCopyWith<$Res> {
  factory _$$SignUpFormImplCopyWith(
          _$SignUpFormImpl value, $Res Function(_$SignUpFormImpl) then) =
      __$$SignUpFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String username,
      String password,
      String confirmPassword,
      DateTime? dateOfBirth,
      @JsonKey(name: 'sex', toJson: genderToJson) Gender? gender});
}

/// @nodoc
class __$$SignUpFormImplCopyWithImpl<$Res>
    extends _$SignUpFormCopyWithImpl<$Res, _$SignUpFormImpl>
    implements _$$SignUpFormImplCopyWith<$Res> {
  __$$SignUpFormImplCopyWithImpl(
      _$SignUpFormImpl _value, $Res Function(_$SignUpFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
  }) {
    return _then(_$SignUpFormImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpFormImpl implements _SignUpForm {
  _$SignUpFormImpl(
      {this.firstName = "",
      this.lastName = "",
      this.username = "",
      this.password = "",
      this.confirmPassword = "",
      this.dateOfBirth,
      @JsonKey(name: 'sex', toJson: genderToJson) this.gender});

  factory _$SignUpFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpFormImplFromJson(json);

  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmPassword;
  @override
  final DateTime? dateOfBirth;
  @override
  @JsonKey(name: 'sex', toJson: genderToJson)
  final Gender? gender;

  @override
  String toString() {
    return 'SignUpForm(firstName: $firstName, lastName: $lastName, username: $username, password: $password, confirmPassword: $confirmPassword, dateOfBirth: $dateOfBirth, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpFormImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, username,
      password, confirmPassword, dateOfBirth, gender);

  /// Create a copy of SignUpForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpFormImplCopyWith<_$SignUpFormImpl> get copyWith =>
      __$$SignUpFormImplCopyWithImpl<_$SignUpFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpFormImplToJson(
      this,
    );
  }
}

abstract class _SignUpForm implements SignUpForm {
  factory _SignUpForm(
          {final String firstName,
          final String lastName,
          final String username,
          final String password,
          final String confirmPassword,
          final DateTime? dateOfBirth,
          @JsonKey(name: 'sex', toJson: genderToJson) final Gender? gender}) =
      _$SignUpFormImpl;

  factory _SignUpForm.fromJson(Map<String, dynamic> json) =
      _$SignUpFormImpl.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get username;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  DateTime? get dateOfBirth;
  @override
  @JsonKey(name: 'sex', toJson: genderToJson)
  Gender? get gender;

  /// Create a copy of SignUpForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpFormImplCopyWith<_$SignUpFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
