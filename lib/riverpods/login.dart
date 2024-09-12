import 'package:fish/repositories/authentication_repository.dart';
import 'package:fish/riverpods/authentication.dart';
import 'package:fish/riverpods/enums/validate_errors.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:fish/riverpods/forms/login_form.dart';

part 'login.g.dart';

const loginSideEffectId = 'login';

@riverpod
class Login extends _$Login {
  late final AuthenticationRepository _authenticationRepository =
      ref.watch(authenticationRepositoryProvider);

  @override
  LoginForm build() {
    return LoginForm();
  }

  void updateForm(LoginForm form) {
    state = form;
  }

  Future<void> login() async {
    final token = await _authenticationRepository.login(state);
    await ref.read(authenticationProvider.notifier).setToken(token);
  }

  ValidateErrors validateUsername() {
    final value = state.username;
    if (value.length < 4 || value.length > 20) {
      return ValidateErrors.invalid;
    }
    return ValidateErrors.none;
  }

  ValidateErrors validatePassword() {
    final value = state.password;
    if (value.length < 6 || value.length > 50) {
      return ValidateErrors.invalid;
    }
    return ValidateErrors.none;
  }
}
