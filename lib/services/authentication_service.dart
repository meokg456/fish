import 'package:dio/dio.dart';
import 'package:fish/dio_config/dio_config.dart';
import 'package:fish/riverpods/forms/sign_up_form.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_service.g.dart';

@riverpod
AuthenticationService authenticationService(AuthenticationServiceRef ref) =>
    DioAuthenticationService(ref.watch(dioProvider));

abstract class AuthenticationService {
  Future<void> signUp(SignUpForm form);
}

class DioAuthenticationService implements AuthenticationService {
  final Dio _dio;

  DioAuthenticationService(this._dio);

  @override
  Future<void> signUp(SignUpForm form) async {
    final data = form.toJson();
    data['fullName'] = '${form.firstName} ${form.lastName}';
    await _dio.post('/user-manager/register', data: data);
  }
}
