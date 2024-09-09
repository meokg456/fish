import 'package:fish/repositories/authentication_repository.dart';
import 'package:fish/riverpods/authentication.dart';
import 'package:fish/riverpods/enums/validate_errors.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:fish/riverpods/forms/login_form.dart';

part 'login.g.dart';

@riverpod
class Login extends _$Login {
  late final AuthenticationRepository _authenticationRepository =
      ref.watch(authenticationRepositoryProvider);

  @override
  Future<LoginForm> build() async {
    return LoginForm();
  }

  void updateForm(LoginForm form) {
    state = AsyncData(form);
  }

  Future<void> login() async {
    try {
      state = const AsyncLoading();
      final token = await _authenticationRepository.login(state.requireValue);
      ref.read(authenticationProvider.notifier).setToken(token);
      state = AsyncData(state.requireValue);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }

  ValidateErrors validateUsername() {
    final value = state.value?.username ?? '';
    if (value.length < 4 || value.length > 20) {
      return ValidateErrors.invalid;
    }
    return ValidateErrors.none;
  }

  ValidateErrors validatePassword() {
    final value = state.value?.password ?? '';
    if (value.length < 6 || value.length > 50) {
      return ValidateErrors.invalid;
    }
    return ValidateErrors.none;
  }
}
