import 'package:dio/dio.dart';
import 'package:fish/data_source/http/dio_client.dart';
import 'package:fish/models/domain/user_model.dart';
import 'package:fish/models/enums/gender.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_repository.g.dart';

@riverpod
UserRepository userRepository(
  UserRepositoryRef ref,
) =>
    DioUserRepository(
      ref.watch(dioClientProvider),
    );

abstract class UserRepository {
  Future<UserModel> getUserInfo();
  Future<UserModel> getUserProfile(int id);
  Future<void> updateUserAvatar(String url);
}

class DioUserRepository implements UserRepository {
  final Dio _dio;

  DioUserRepository(this._dio);

  @override
  Future<UserModel> getUserInfo() async {
    final response = await _dio.get('/user-manager/user-info');
    final body = response.data as Map<String, dynamic>;
    final user = UserModel.fromJson(body['data']);
    return user;
  }

  @override
  Future<void> updateUserAvatar(String url) {
    // TODO: implement updateUserAvatar
    throw UnimplementedError();
  }

  @override
  Future<UserModel> getUserProfile(int id) async {
    final response = await _dio.get('/user-manager/user-info/$id');
    final body = response.data as Map<String, dynamic>;
    final user = UserModel.fromJson(body['data']);
    return user;
  }
}
