import 'package:fish/models/domain/user_model.dart';
import 'package:fish/repositories/file_repository.dart';
import 'package:fish/repositories/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user.g.dart';

@riverpod
class User extends _$User {
  late final UserRepository _userRepository = ref.watch(userRepositoryProvider);
  late final FileRepository _fileRepository = ref.watch(fileRepositoryProvider);

  @override
  Future<UserModel> build() {
    return _userRepository.getUserInfo();
  }

  Future<void> updateAvatar(String filePath) async {
    final url = await _fileRepository.uploadFile(filePath);
    await _userRepository.updateUserAvatar(url);
    state = AsyncData(state.requireValue.copyWith(avatarUrl: url));
  }
}
