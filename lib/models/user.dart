import 'package:fish/models/enums/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required int id,
    required String nickName,
    @Default('') String avatarUrl,
    required DateTime dateOrBirth,
    required Gender gender,
    @Default([]) List<int> friends,
    @Default([]) List<int> inviters,
    @Default([]) List<int> request,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
