import 'package:dio/dio.dart';
import 'package:fish/data_source/http/dio_client.dart';
import 'package:fish/models/user_model.dart';
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
  Future<UserModel> getUserInfo(String userId);
}

class DioUserRepository implements UserRepository {
  final Dio _dio;

  DioUserRepository(this._dio);

  @override
  Future<UserModel> getUserInfo(String userId) async {
    final response = await _dio.get('/user-manager/user-info/$userId');
    final body = response.data as Map<String, dynamic>;
    final user = UserModel.fromJson(body['data']);
    return user;
  }
}
