import 'package:fish/riverpods/forms/login_form.dart';
import 'package:fish/riverpods/forms/sign_up_form.dart';
import 'package:fish/services/authentication/storage_authentication_service.dart';
import 'package:fish/services/authentication/remote_authentication_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_repository.g.dart';

@riverpod
AuthenticationRepository authenticationRepository(
  AuthenticationRepositoryRef ref,
) =>
    AuthenticationRepositoryImpl(
      ref.watch(remoteAuthenticationServiceProvider),
      ref.watch(storageAuthenticationServiceProvider),
    );

abstract class AuthenticationRepository {
  Future<String> login(LoginForm form);
  Future<void> signUp(SignUpForm form);
  Future<String?> loadToken();
  Future<void> saveToken(String token);
}

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final RemoteAuthenticationService _remoteAuthenticationService;
  final StorageAuthenticationService _storageAuthenticationService;

  AuthenticationRepositoryImpl(
    this._remoteAuthenticationService,
    this._storageAuthenticationService,
  );

  @override
  Future<void> signUp(SignUpForm form) {
    return _remoteAuthenticationService.signUp(form);
  }

  @override
  Future<String> login(LoginForm form) {
    return _remoteAuthenticationService.login(form);
  }

  @override
  Future<String?> loadToken() {
    return _storageAuthenticationService.loadToken();
  }

  @override
  Future<void> saveToken(String token) {
    return _storageAuthenticationService.saveToken(token);
  }
}
