// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'side_effect_performer.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sideEffectPerformerHash() =>
    r'f753a4ae0c8e77160d754d300704736acc43c37b';

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

abstract class _$SideEffectPerformer
    extends BuildlessAutoDisposeAsyncNotifier<void> {
  late final String id;

  FutureOr<void> build(
    String id,
  );
}

/// See also [SideEffectPerformer].
@ProviderFor(SideEffectPerformer)
const sideEffectPerformerProvider = SideEffectPerformerFamily();

/// See also [SideEffectPerformer].
class SideEffectPerformerFamily extends Family<AsyncValue<void>> {
  /// See also [SideEffectPerformer].
  const SideEffectPerformerFamily();

  /// See also [SideEffectPerformer].
  SideEffectPerformerProvider call(
    String id,
  ) {
    return SideEffectPerformerProvider(
      id,
    );
  }

  @override
  SideEffectPerformerProvider getProviderOverride(
    covariant SideEffectPerformerProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'sideEffectPerformerProvider';
}

/// See also [SideEffectPerformer].
class SideEffectPerformerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<SideEffectPerformer, void> {
  /// See also [SideEffectPerformer].
  SideEffectPerformerProvider(
    String id,
  ) : this._internal(
          () => SideEffectPerformer()..id = id,
          from: sideEffectPerformerProvider,
          name: r'sideEffectPerformerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sideEffectPerformerHash,
          dependencies: SideEffectPerformerFamily._dependencies,
          allTransitiveDependencies:
              SideEffectPerformerFamily._allTransitiveDependencies,
          id: id,
        );

  SideEffectPerformerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  FutureOr<void> runNotifierBuild(
    covariant SideEffectPerformer notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(SideEffectPerformer Function() create) {
    return ProviderOverride(
      origin: this,
      override: SideEffectPerformerProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<SideEffectPerformer, void>
      createElement() {
    return _SideEffectPerformerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SideEffectPerformerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SideEffectPerformerRef on AutoDisposeAsyncNotifierProviderRef<void> {
  /// The parameter `id` of this provider.
  String get id;
}

class _SideEffectPerformerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SideEffectPerformer, void>
    with SideEffectPerformerRef {
  _SideEffectPerformerProviderElement(super.provider);

  @override
  String get id => (origin as SideEffectPerformerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
