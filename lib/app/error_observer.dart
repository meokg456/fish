import 'package:fish/app/scaffold_messenger_global.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ErrorObserver extends ProviderObserver {
  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    ScaffoldMessengerGlobal.showErrorMessage(
      error.toString().replaceAll('Exception: ', ""),
    );
  }
}
