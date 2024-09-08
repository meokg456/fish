import 'package:dio/dio.dart';
import 'package:fish/app/scaffold_messenger_global.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ErrorObserver extends ProviderObserver {
  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    String message = error.toString();
    if (error is DioException) {
      message = error.message ?? '';
    }
    ScaffoldMessengerGlobal.showErrorMessage(
      message,
    );
  }
}
