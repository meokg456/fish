import 'package:fish/riverpods/forms/sign_up_form.dart';
import 'package:fish/services/authentication_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_repository.g.dart';

@riverpod
AuthenticationRepository authenticationRepository(
  AuthenticationRepositoryRef ref,
) =>
    AuthenticationRepositoryImpl(ref.watch(authenticationServiceProvider));

abstract class AuthenticationRepository {
  Future<void> signUp(SignUpForm form);
}

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationService _authenticationService;

  AuthenticationRepositoryImpl(this._authenticationService);

  @override
  Future<void> signUp(SignUpForm form) {
    return _authenticationService.signUp(form);
  }
}
