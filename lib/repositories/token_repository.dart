import 'package:fish/data_source/shared_preferences/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'token_repository.g.dart';

@riverpod
TokenRepository tokenRepository(
  TokenRepositoryRef ref,
) =>
    SharedPreferencesTokenRepository(
      ref.watch(sharedPreferencesServiceProvider),
    );

abstract class TokenRepository {
  Future<String?> loadToken();
  Future<void> saveToken(String token);
  Future<void> clearToken();
}

class SharedPreferencesTokenRepository implements TokenRepository {
  final SharedPreferencesAsync _sharedPreferences;
  final _tokenKey = 'jwt-token';

  SharedPreferencesTokenRepository(this._sharedPreferences);

  @override
  Future<String?> loadToken() {
    return _sharedPreferences.getString(_tokenKey);
  }

  @override
  Future<void> saveToken(String token) {
    return _sharedPreferences.setString(_tokenKey, token);
  }

  @override
  Future<void> clearToken() {
    return _sharedPreferences.remove(_tokenKey);
  }
}
