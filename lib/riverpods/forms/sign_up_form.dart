import 'package:fish/models/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_form.freezed.dart';
part 'sign_up_form.g.dart';

@freezed
class SignUpForm with _$SignUpForm {
  factory SignUpForm({
    @Default("") String firstName,
    @Default("") String lastName,
    @Default("") String username,
    @Default("") String password,
    @Default("") String confirmPassword,
    DateTime? dateOfBirth,
    @JsonKey(name: 'sex', toJson: genderToJson) Gender? gender,
  }) = _SignUpForm;

  factory SignUpForm.fromJson(Map<String, Object?> json) =>
      _$SignUpFormFromJson(json);
}
