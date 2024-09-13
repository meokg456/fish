// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      nickName: json['nickName'] as String,
      avatarUrl: json['avatarUrl'] as String? ?? '',
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      gender: genderFromJson(json['sex'] as String),
      friends: (json['friends'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      inviters: (json['inviters'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      request: (json['request'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'nickName': instance.nickName,
      'avatarUrl': instance.avatarUrl,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'sex': _$GenderEnumMap[instance.gender]!,
      'friends': instance.friends,
      'inviters': instance.inviters,
      'request': instance.request,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};
