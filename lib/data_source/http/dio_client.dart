import 'dart:io';

import 'package:fish/app/flavor_config.dart';
import 'package:fish/data_source/http/dio_interceptor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';

part 'dio_client.g.dart';

@Riverpod(keepAlive: true)
class DioClient extends _$DioClient {
  @override
  Dio build() {
    final dio = Dio();
    dio.options.baseUrl = FlavorConfig.instance.values.baseUrl;
    dio.options.headers = {
      HttpHeaders.contentTypeHeader: ContentType.json.value,
    };
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
