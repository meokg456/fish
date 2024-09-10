import 'package:dio/dio.dart';
import 'package:fish/data_source/http/dio_client.dart';
import 'package:fish/riverpods/forms/login_form.dart';
import 'package:fish/riverpods/forms/sign_up_form.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_authentication_service.g.dart';

@riverpod
RemoteAuthenticationService remoteAuthenticationService(
  RemoteAuthenticationServiceRef ref,
) =>
    DioAuthenticationService(
      ref.watch(dioClientProvider),
    );

abstract class RemoteAuthenticationService {
  Future<void> signUp(SignUpForm form);
  Future<String> login(LoginForm form);
}

class DioAuthenticationService implements RemoteAuthenticationService {
  final Dio _dio;
  DioAuthenticationService(this._dio);

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
