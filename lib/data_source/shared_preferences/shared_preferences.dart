import 'package:shared_preferences/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shared_preferences.g.dart';

@Riverpod(keepAlive: true)
class SharedPreferencesService extends _$SharedPreferencesService {
  @override
  SharedPreferencesAsync build() {
    return SharedPreferencesAsync();
  }
}
