import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form.freezed.dart';
part 'login_form.g.dart';

@freezed
class LoginForm with _$LoginForm {
  factory LoginForm({
    @Default("") String username,
    @Default("") String password,
  }) = _LoginForm;

  factory LoginForm.fromJson(Map<String, Object?> json) =>
      _$LoginFormFromJson(json);
}
