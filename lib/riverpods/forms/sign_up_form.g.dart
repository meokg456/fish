// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpFormImpl _$$SignUpFormImplFromJson(Map<String, dynamic> json) =>
    _$SignUpFormImpl(
      firstName: json['firstName'] as String? ?? "",
      lastname: json['lastname'] as String? ?? "",
      userName: json['userName'] as String? ?? "",
      password: json['password'] as String? ?? "",
      confirmPassword: json['confirmPassword'] as String? ?? "",
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
    );

Map<String, dynamic> _$$SignUpFormImplToJson(_$SignUpFormImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastname': instance.lastname,
      'userName': instance.userName,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'gender': _$GenderEnumMap[instance.gender],
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};
