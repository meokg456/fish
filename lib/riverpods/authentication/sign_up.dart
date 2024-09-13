import 'package:fish/repositories/authentication_repository.dart';
import 'package:fish/riverpods/enums/validate_errors.dart';
import 'package:fish/riverpods/forms/sign_up_form.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up.g.dart';

const signUpSideEffectId = 'sign_up';

@riverpod
class SignUp extends _$SignUp {
  late final AuthenticationRepository _authenticationRepository =
      ref.watch(authenticationRepositoryProvider);

  @override
  SignUpForm build() {
    return SignUpForm();
  }

  void updateForm(SignUpForm form) {
    state = form;
  }

  Future<void> signUp() async {
    await _authenticationRepository.signUp(state);
  }

  ValidateErrors validateFirstName() {
    final value = state.firstName;
    if (value.isEmpty) {
      return ValidateErrors.empty;
    }
    return ValidateErrors.none;
  }

  ValidateErrors validateLastName() {
    final value = state.lastName;
    if (value.isEmpty) {
      return ValidateErrors.empty;
    }
    return ValidateErrors.none;
  }

  ValidateErrors validateUsername() {
    final value = state.username;
    if (value.isEmpty) {
      return ValidateErrors.empty;
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

  ValidateErrors validateConfirmPassword() {
    final value = state.confirmPassword;
    final password = ref.read(signUpProvider.select((it) => it.password));
    if (value != password) {
      return ValidateErrors.notMatch;
    }
    return ValidateErrors.none;
  }

  ValidateErrors validateDateOfBirth() {
    final value = state.dateOfBirth;
    if (value == null) {
      return ValidateErrors.empty;
    }
    if (DateTime.now().year - value.year < 3) {
      return ValidateErrors.invalid;
    }
    return ValidateErrors.none;
  }

  ValidateErrors validateGender() {
    final value = state.gender;
    if (value == null) {
      return ValidateErrors.empty;
    }

    return ValidateErrors.none;
  }
}
