import 'package:fish/repositories/authentication_repository.dart';
import 'package:fish/riverpods/enums/validate_errors.dart';
import 'package:fish/riverpods/forms/sign_up_form.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up.g.dart';

@riverpod
class SignUp extends _$SignUp {
  late final AuthenticationRepository _authenticationRepository =
      ref.watch(authenticationRepositoryProvider);

  @override
  Future<SignUpForm> build() async {
    return SignUpForm();
  }

  void updateForm(SignUpForm form) {
    state = AsyncData(form);
  }

  Future<void> signUp() async {
    try {
      state = const AsyncLoading();
      await _authenticationRepository.signUp(state.requireValue);
      state = AsyncData(state.requireValue);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }

  ValidateErrors validateFirstName() {
    final value = state.value?.firstName ?? '';
    if (value.isEmpty) {
      return ValidateErrors.empty;
    }
    return ValidateErrors.none;
  }

  ValidateErrors validateLastName() {
    final value = state.value?.lastName ?? '';
    if (value.isEmpty) {
      return ValidateErrors.empty;
    }
    return ValidateErrors.none;
  }

  ValidateErrors validateUsername() {
    final value = state.value?.username ?? '';
    if (value.isEmpty) {
      return ValidateErrors.empty;
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

  ValidateErrors validateConfirmPassword() {
    final value = state.value?.confirmPassword ?? '';
    final password =
        ref.read(signUpProvider.select((it) => it.value?.password ?? ''));
    if (value != password) {
      return ValidateErrors.notMatch;
    }
    return ValidateErrors.none;
  }

  ValidateErrors validateDateOfBirth() {
    final value = state.value?.dateOfBirth;
    if (value == null) {
      return ValidateErrors.empty;
    }
    if (DateTime.now().year - value.year < 3) {
      return ValidateErrors.invalid;
    }
    return ValidateErrors.none;
  }

  ValidateErrors validateGender() {
    final value = state.value?.gender;
    if (value == null) {
      return ValidateErrors.empty;
    }

    return ValidateErrors.none;
  }
}
