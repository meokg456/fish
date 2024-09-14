// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_file.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$uploadFileHash() => r'ddc3df4057be258bc4a1b5fd99cb7049f911a41b';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$UploadFile extends BuildlessAutoDisposeAsyncNotifier<String> {
  late final String filePath;

  FutureOr<String> build(
    String filePath,
  );
}

/// See also [UploadFile].
@ProviderFor(UploadFile)
const uploadFileProvider = UploadFileFamily();

/// See also [UploadFile].
class UploadFileFamily extends Family<AsyncValue<String>> {
  /// See also [UploadFile].
  const UploadFileFamily();

  /// See also [UploadFile].
  UploadFileProvider call(
    String filePath,
  ) {
    return UploadFileProvider(
      filePath,
    );
  }

  @override
  UploadFileProvider getProviderOverride(
    covariant UploadFileProvider provider,
  ) {
    return call(
      provider.filePath,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'uploadFileProvider';
}

/// See also [UploadFile].
class UploadFileProvider
    extends AutoDisposeAsyncNotifierProviderImpl<UploadFile, String> {
  /// See also [UploadFile].
  UploadFileProvider(
    String filePath,
  ) : this._internal(
          () => UploadFile()..filePath = filePath,
          from: uploadFileProvider,
          name: r'uploadFileProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$uploadFileHash,
          dependencies: UploadFileFamily._dependencies,
          allTransitiveDependencies:
              UploadFileFamily._allTransitiveDependencies,
          filePath: filePath,
        );

  UploadFileProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.filePath,
  }) : super.internal();

  final String filePath;

  @override
  FutureOr<String> runNotifierBuild(
    covariant UploadFile notifier,
  ) {
    return notifier.build(
      filePath,
    );
  }

  @override
  Override overrideWith(UploadFile Function() create) {
    return ProviderOverride(
      origin: this,
      override: UploadFileProvider._internal(
        () => create()..filePath = filePath,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        filePath: filePath,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<UploadFile, String> createElement() {
    return _UploadFileProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UploadFileProvider && other.filePath == filePath;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filePath.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UploadFileRef on AutoDisposeAsyncNotifierProviderRef<String> {
  /// The parameter `filePath` of this provider.
  String get filePath;
}

class _UploadFileProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UploadFile, String>
    with UploadFileRef {
  _UploadFileProviderElement(super.provider);

  @override
  String get filePath => (origin as UploadFileProvider).filePath;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
