import 'package:fish/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_model.freezed.dart';
part 'authentication_model.g.dart';

@freezed
class AuthenticationModel with _$AuthenticationModel {
  factory AuthenticationModel({User? user, String? token}) =
      _AuthenticationModel;

  factory AuthenticationModel.fromJson(Map<String, Object?> json) =>
      _$AuthenticationModelFromJson(json);
}
