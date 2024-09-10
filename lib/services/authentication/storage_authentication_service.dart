import 'package:fish/data_source/shared_preferences/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'storage_authentication_service.g.dart';

@riverpod
StorageAuthenticationService storageAuthenticationService(
  StorageAuthenticationServiceRef ref,
) =>
    SharedPreferencesAuthenticationService(
      ref.watch(sharedPreferencesServiceProvider),
    );

abstract class StorageAuthenticationService {
  Future<String?> loadToken();
  Future<void> saveToken(String token);
}

class SharedPreferencesAuthenticationService
    implements StorageAuthenticationService {
  final SharedPreferencesAsync _sharedPreferences;
  final _tokenKey = 'jwt-token';

  SharedPreferencesAuthenticationService(this._sharedPreferences);

  @override
  Future<String?> loadToken() {
    return _sharedPreferences.getString(_tokenKey);
  }

  @override
  Future<void> saveToken(String token) {
    return _sharedPreferences.setString(_tokenKey, token);
  }
}
