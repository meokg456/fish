// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppSetting _$AppSettingFromJson(Map<String, dynamic> json) {
  return _AppSetting.fromJson(json);
}

/// @nodoc
mixin _$AppSetting {
  String get appName => throw _privateConstructorUsedError;
  String get appIcon => throw _privateConstructorUsedError;

  /// Serializes this AppSetting to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingCopyWith<AppSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingCopyWith<$Res> {
  factory $AppSettingCopyWith(
          AppSetting value, $Res Function(AppSetting) then) =
      _$AppSettingCopyWithImpl<$Res, AppSetting>;
  @useResult
  $Res call({String appName, String appIcon});
}

/// @nodoc
class _$AppSettingCopyWithImpl<$Res, $Val extends AppSetting>
    implements $AppSettingCopyWith<$Res> {
  _$AppSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? appIcon = null,
  }) {
    return _then(_value.copyWith(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      appIcon: null == appIcon
          ? _value.appIcon
          : appIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingImplCopyWith<$Res>
    implements $AppSettingCopyWith<$Res> {
  factory _$$AppSettingImplCopyWith(
          _$AppSettingImpl value, $Res Function(_$AppSettingImpl) then) =
      __$$AppSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appName, String appIcon});
}

/// @nodoc
class __$$AppSettingImplCopyWithImpl<$Res>
    extends _$AppSettingCopyWithImpl<$Res, _$AppSettingImpl>
    implements _$$AppSettingImplCopyWith<$Res> {
  __$$AppSettingImplCopyWithImpl(
      _$AppSettingImpl _value, $Res Function(_$AppSettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? appIcon = null,
  }) {
    return _then(_$AppSettingImpl(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      appIcon: null == appIcon
          ? _value.appIcon
          : appIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppSettingImpl implements _AppSetting {
  _$AppSettingImpl({required this.appName, required this.appIcon});

  factory _$AppSettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingImplFromJson(json);

  @override
  final String appName;
  @override
  final String appIcon;

  @override
  String toString() {
    return 'AppSetting(appName: $appName, appIcon: $appIcon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingImpl &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.appIcon, appIcon) || other.appIcon == appIcon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appName, appIcon);

  /// Create a copy of AppSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingImplCopyWith<_$AppSettingImpl> get copyWith =>
      __$$AppSettingImplCopyWithImpl<_$AppSettingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingImplToJson(
      this,
    );
  }
}

abstract class _AppSetting implements AppSetting {
  factory _AppSetting(
      {required final String appName,
      required final String appIcon}) = _$AppSettingImpl;

  factory _AppSetting.fromJson(Map<String, dynamic> json) =
      _$AppSettingImpl.fromJson;

  @override
  String get appName;
  @override
  String get appIcon;

  /// Create a copy of AppSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingImplCopyWith<_$AppSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
