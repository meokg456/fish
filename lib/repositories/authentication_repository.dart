import 'package:dio/dio.dart';
import 'package:fish/data_source/http/dio_client.dart';
import 'package:fish/riverpods/forms/login_form.dart';
import 'package:fish/riverpods/forms/sign_up_form.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_repository.g.dart';

@riverpod
AuthenticationRepository authenticationRepository(
  AuthenticationRepositoryRef ref,
) =>
    DioAuthenticationRepository(
      ref.watch(dioClientProvider),
    );

abstract class AuthenticationRepository {
  Future<String> login(LoginForm form);
  Future<void> signUp(SignUpForm form);
}

class DioAuthenticationRepository implements AuthenticationRepository {
  final Dio _dio;

  DioAuthenticationRepository(this._dio);

  @override
  Future<void> signUp(SignUpForm form) async {
    final data = form.toJson();
    data['fullName'] = '${form.firstName} ${form.lastName}';
    await _dio.post('/user-manager/register', data: data);
  }

  @override
  Future<String> login(LoginForm form) async {
    final data = form.toJson();
    final response = await _dio.post('/user-manager/login', data: data);
    final body = response.data as Map<String, dynamic>;
    return body['data']['token'];
  }
}
