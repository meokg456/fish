import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint('REQUEST[${options.method}] => PATH: ${options.path}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final body = response.data as Map<String, dynamic>;
    if (body['error'] != 'SUCCESS') {
      return handler.reject(
        DioException(requestOptions: RequestOptions(), message: body['error']),
      );
    }
    debugPrint(
      'RESPONSE[${response.statusCode}] => DATA: ${response.data}',
    );
    super.onResponse(response, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    debugPrint(
      'ERROR[${err.response?.statusCode}] => DATA: ${err.response?.data}',
    );
    super.onError(err, handler);
  }
}
