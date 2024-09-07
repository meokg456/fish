import 'package:fish/riverpods/forms/sign_up_form.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up.g.dart';

@riverpod
class SignUp extends _$SignUp {
  @override
  SignUpForm build() {
    return SignUpForm();
  }

  void updateForm(SignUpForm form) {
    state = form;
  }
}
