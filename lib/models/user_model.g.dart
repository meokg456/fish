// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num).toInt(),
      nickName: json['nickName'] as String,
      avatarUrl: json['avatarUrl'] as String? ?? '',
      dateOrBirth: DateTime.parse(json['dateOrBirth'] as String),
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
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
      'id': instance.id,
      'nickName': instance.nickName,
      'avatarUrl': instance.avatarUrl,
      'dateOrBirth': instance.dateOrBirth.toIso8601String(),
      'gender': _$GenderEnumMap[instance.gender]!,
      'friends': instance.friends,
      'inviters': instance.inviters,
      'request': instance.request,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};
