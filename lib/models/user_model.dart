import 'package:fish/models/enums/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    required int id,
    required String nickName,
    @Default('') String avatarUrl,
    required DateTime dateOrBirth,
    required Gender gender,
    @Default([]) List<int> friends,
    @Default([]) List<int> inviters,
    @Default([]) List<int> request,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}
