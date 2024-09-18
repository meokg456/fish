import 'package:fish/riverpods/file/upload_file_progress.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoggingObserver extends ProviderObserver {
  final excludeProvider = [uploadFileProgressProvider.runtimeType];

  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) {
    debugPrint('Provider $provider was initialized with $value');
  }

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) {
    debugPrint('Provider $provider was disposed');
  }

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (excludeProvider.contains(provider.runtimeType)) {
      return;
    }
    debugPrint('Provider $provider updated');
    debugPrint('Provider $provider previousValue: $previousValue');
    debugPrint('Provider $provider newValue: $newValue');
  }
}
