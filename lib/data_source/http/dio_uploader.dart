import 'dart:io';

import 'package:fish/app/flavor_config.dart';
import 'package:fish/data_source/http/dio_interceptor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';

part 'dio_uploader.g.dart';

@Riverpod(keepAlive: true)
class DioUploaderClient extends _$DioUploaderClient {
  @override
  Dio build() {
    final dio = Dio();
    dio.options.baseUrl = FlavorConfig.instance.values.uploadUrl;
    dio.interceptors.add(DioInterceptor());
    return dio;
  }

  void setToken(String token) {
    state.options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
  }

  void removeToken() {
    state.options.headers.remove(HttpHeaders.authorizationHeader);
  }
}
