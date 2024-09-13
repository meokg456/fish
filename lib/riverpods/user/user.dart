import 'package:fish/models/user_model.dart';
import 'package:fish/repositories/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user.g.dart';

@riverpod
class User extends _$User {
  late final UserRepository _userRepository = ref.watch(userRepositoryProvider);

  @override
  Future<UserModel> build() async {
    return await _userRepository.getUserInfo();
  }
}
