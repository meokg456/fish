import 'package:fish/models/authentication_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication.g.dart';

@Riverpod(keepAlive: true)
class Authentication extends _$Authentication {
  @override
  AuthenticationModel build() {
    return AuthenticationModel();
  }

  void setToken(String token) {
    state = state.copyWith(token: token);
  }
}
