// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestProgressModel {
  int get current => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  /// Create a copy of RequestProgressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestProgressModelCopyWith<RequestProgressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestProgressModelCopyWith<$Res> {
  factory $RequestProgressModelCopyWith(RequestProgressModel value,
          $Res Function(RequestProgressModel) then) =
      _$RequestProgressModelCopyWithImpl<$Res, RequestProgressModel>;
  @useResult
  $Res call({int current, int total, dynamic data});
}

/// @nodoc
class _$RequestProgressModelCopyWithImpl<$Res,
        $Val extends RequestProgressModel>
    implements $RequestProgressModelCopyWith<$Res> {
  _$RequestProgressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestProgressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? total = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestProgressModelImplCopyWith<$Res>
    implements $RequestProgressModelCopyWith<$Res> {
  factory _$$RequestProgressModelImplCopyWith(_$RequestProgressModelImpl value,
          $Res Function(_$RequestProgressModelImpl) then) =
      __$$RequestProgressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int current, int total, dynamic data});
}

/// @nodoc
class __$$RequestProgressModelImplCopyWithImpl<$Res>
    extends _$RequestProgressModelCopyWithImpl<$Res, _$RequestProgressModelImpl>
    implements _$$RequestProgressModelImplCopyWith<$Res> {
  __$$RequestProgressModelImplCopyWithImpl(_$RequestProgressModelImpl _value,
      $Res Function(_$RequestProgressModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestProgressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? total = null,
    Object? data = freezed,
  }) {
    return _then(_$RequestProgressModelImpl(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$RequestProgressModelImpl implements _RequestProgressModel {
  _$RequestProgressModelImpl({this.current = 0, this.total = 0, this.data});

  @override
  @JsonKey()
  final int current;
  @override
  @JsonKey()
  final int total;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'RequestProgressModel(current: $current, total: $total, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestProgressModelImpl &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, current, total, const DeepCollectionEquality().hash(data));

  /// Create a copy of RequestProgressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestProgressModelImplCopyWith<_$RequestProgressModelImpl>
      get copyWith =>
          __$$RequestProgressModelImplCopyWithImpl<_$RequestProgressModelImpl>(
              this, _$identity);
}

abstract class _RequestProgressModel implements RequestProgressModel {
  factory _RequestProgressModel(
      {final int current,
      final int total,
      final dynamic data}) = _$RequestProgressModelImpl;

  @override
  int get current;
  @override
  int get total;
  @override
  dynamic get data;

  /// Create a copy of RequestProgressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestProgressModelImplCopyWith<_$RequestProgressModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
