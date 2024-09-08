import 'dart:io';

import 'package:fish/app/flavor_config.dart';
import 'package:fish/dio_config/dio_interceptor.dart';
import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';

part 'dio_config.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final dio = Dio();
  dio.options.baseUrl = FlavorConfig.instance.values.baseUrl;
  dio.options.headers = {
    HttpHeaders.contentTypeHeader: ContentType.json.value,
  };
  dio.interceptors.add(DioInterceptor());
  return dio;
}
