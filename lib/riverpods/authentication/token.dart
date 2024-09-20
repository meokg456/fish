import 'package:fish/data_source/http/dio_client.dart';
import 'package:fish/data_source/http/dio_uploader.dart';
import 'package:fish/repositories/token_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token.g.dart';

@riverpod
class Token extends _$Token {
  late final TokenRepository _tokenRepository =
      ref.watch(tokenRepositoryProvider);

  @override
  Future<String?> build() async {
    final token = await _tokenRepository.loadToken();
    if (token != null) {
      ref.read(dioClientProvider.notifier).setToken(token);
      ref.read(dioUploaderClientProvider.notifier).setToken(token);
    }
    return token;
  }

  Future<void> setToken(String token) async {
    await _tokenRepository.saveToken(token);
    ref.read(dioClientProvider.notifier).setToken(token);
    ref.read(dioUploaderClientProvider.notifier).setToken(token);
    state = AsyncData(token);
  }

  Future<void> clearToken() async {
    await _tokenRepository.clearToken();
    ref.read(dioClientProvider.notifier).removeToken();
    ref.read(dioUploaderClientProvider.notifier).removeToken();
    state = const AsyncData(null);
  }
}
