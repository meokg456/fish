// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get nickName => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'sex', fromJson: genderFromJson)
  Gender get gender => throw _privateConstructorUsedError;
  List<int> get friends => throw _privateConstructorUsedError;
  List<int> get inviters => throw _privateConstructorUsedError;
  List<int> get request => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String nickName,
      String avatarUrl,
      DateTime dateOfBirth,
      @JsonKey(name: 'sex', fromJson: genderFromJson) Gender gender,
      List<int> friends,
      List<int> inviters,
      List<int> request});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickName = null,
    Object? avatarUrl = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? friends = null,
    Object? inviters = null,
    Object? request = null,
  }) {
    return _then(_value.copyWith(
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      friends: null == friends
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<int>,
      inviters: null == inviters
          ? _value.inviters
          : inviters // ignore: cast_nullable_to_non_nullable
              as List<int>,
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nickName,
      String avatarUrl,
      DateTime dateOfBirth,
      @JsonKey(name: 'sex', fromJson: genderFromJson) Gender gender,
      List<int> friends,
      List<int> inviters,
      List<int> request});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickName = null,
    Object? avatarUrl = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? friends = null,
    Object? inviters = null,
    Object? request = null,
  }) {
    return _then(_$UserModelImpl(
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      friends: null == friends
          ? _value._friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<int>,
      inviters: null == inviters
          ? _value._inviters
          : inviters // ignore: cast_nullable_to_non_nullable
              as List<int>,
      request: null == request
          ? _value._request
          : request // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {required this.nickName,
      this.avatarUrl = '',
      required this.dateOfBirth,
      @JsonKey(name: 'sex', fromJson: genderFromJson) required this.gender,
      final List<int> friends = const [],
      final List<int> inviters = const [],
      final List<int> request = const []})
      : _friends = friends,
        _inviters = inviters,
        _request = request;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String nickName;
  @override
  @JsonKey()
  final String avatarUrl;
  @override
  final DateTime dateOfBirth;
  @override
  @JsonKey(name: 'sex', fromJson: genderFromJson)
  final Gender gender;
  final List<int> _friends;
  @override
  @JsonKey()
  List<int> get friends {
    if (_friends is EqualUnmodifiableListView) return _friends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friends);
  }

  final List<int> _inviters;
  @override
  @JsonKey()
  List<int> get inviters {
    if (_inviters is EqualUnmodifiableListView) return _inviters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inviters);
  }

  final List<int> _request;
  @override
  @JsonKey()
  List<int> get request {
    if (_request is EqualUnmodifiableListView) return _request;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_request);
  }

  @override
  String toString() {
    return 'UserModel(nickName: $nickName, avatarUrl: $avatarUrl, dateOfBirth: $dateOfBirth, gender: $gender, friends: $friends, inviters: $inviters, request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            const DeepCollectionEquality().equals(other._friends, _friends) &&
            const DeepCollectionEquality().equals(other._inviters, _inviters) &&
            const DeepCollectionEquality().equals(other._request, _request));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nickName,
      avatarUrl,
      dateOfBirth,
      gender,
      const DeepCollectionEquality().hash(_friends),
      const DeepCollectionEquality().hash(_inviters),
      const DeepCollectionEquality().hash(_request));

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {required final String nickName,
      final String avatarUrl,
      required final DateTime dateOfBirth,
      @JsonKey(name: 'sex', fromJson: genderFromJson)
      required final Gender gender,
      final List<int> friends,
      final List<int> inviters,
      final List<int> request}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get nickName;
  @override
  String get avatarUrl;
  @override
  DateTime get dateOfBirth;
  @override
  @JsonKey(name: 'sex', fromJson: genderFromJson)
  Gender get gender;
  @override
  List<int> get friends;
  @override
  List<int> get inviters;
  @override
  List<int> get request;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
