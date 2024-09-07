// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpFormImpl _$$SignUpFormImplFromJson(Map<String, dynamic> json) =>
    _$SignUpFormImpl(
      firstName: json['firstName'] as String? ?? "",
      lastName: json['lastName'] as String? ?? "",
      username: json['username'] as String? ?? "",
      password: json['password'] as String? ?? "",
      confirmPassword: json['confirmPassword'] as String? ?? "",
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      gender: $enumDecodeNullable(_$GenderEnumMap, json['sex']),
    );

Map<String, dynamic> _$$SignUpFormImplToJson(_$SignUpFormImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'username': instance.username,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'sex': genderToJson(instance.gender),
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};
