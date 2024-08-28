import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';

part 'dio_config.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final dio = Dio();
  dio.options.baseUrl = 'localhost:8080';
  return dio;
}
