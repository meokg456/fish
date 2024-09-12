import 'package:fish/data_source/http/dio_client.dart';
import 'package:fish/repositories/authentication_repository.dart';
import 'package:fish/repositories/token_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication.g.dart';

@riverpod
class Authentication extends _$Authentication {
  late final AuthenticationRepository _authenticationRepository =
      ref.watch(authenticationRepositoryProvider);
  late final TokenRepository _tokenRepository =
      ref.watch(tokenRepositoryProvider);

  @override
  Future<bool> build() async {
    final token = await _tokenRepository.loadToken();
    if (token != null) {
      ref.read(dioClientProvider.notifier).setToken(token);
      return true;
    }
    return false;
  }

  Future<void> setToken(String token) async {
    await _tokenRepository.saveToken(token);
    ref.read(dioClientProvider.notifier).setToken(token);
    state = const AsyncData(true);
  }
}
