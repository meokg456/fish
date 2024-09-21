import 'package:fish/models/domain/user_model.dart';
import 'package:fish/repositories/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_profile.g.dart';

@riverpod
class UserProfile extends _$UserProfile {
  late final UserRepository _userRepository = ref.watch(userRepositoryProvider);

  @override
  Future<UserModel> build(int id) {
    return _userRepository.getUserProfile(id);
  }
}
