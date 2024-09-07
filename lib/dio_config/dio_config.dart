import 'dart:io';

import 'package:fish/app/flavor_config.dart';
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
  // dio.interceptors.add(
  //   InterceptorsWrapper(
  //     onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
  //       // Do something before request is sent.
  //       // If you want to resolve the request with custom data,
  //       // you can resolve a `Response` using `handler.resolve(response)`.
  //       // If you want to reject the request with a error message,
  //       // you can reject with a `DioException` using `handler.reject(dioError)`.
  //       return handler.next(options);
  //     },
  //     onResponse: (Response response, ResponseInterceptorHandler handler) {
  //       print('RESPONSE[${response.statusCode}] => PATH: ${response.data}');
  //       return handler.next(response);
  //     },
  //     onError: (DioException error, ErrorInterceptorHandler handler) {
  //       print(
  //           'ERROR[${error.response?.statusCode}] => PATH: ${error.response?.data}');
  //       return handler.next(error);
  //     },
  //   ),
  // );
  return dio;
}
