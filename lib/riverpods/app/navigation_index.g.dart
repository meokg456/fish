// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_index.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$navigationIndexHash() => r'6ef7d77f1d0d39a44ab4708136db5bcc980c1acf';

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

abstract class _$NavigationIndex extends BuildlessNotifier<int> {
  late final int initialIndex;

  int build(
    int initialIndex,
  );
}

/// See also [NavigationIndex].
@ProviderFor(NavigationIndex)
const navigationIndexProvider = NavigationIndexFamily();

/// See also [NavigationIndex].
class NavigationIndexFamily extends Family<int> {
  /// See also [NavigationIndex].
  const NavigationIndexFamily();

  /// See also [NavigationIndex].
  NavigationIndexProvider call(
    int initialIndex,
  ) {
    return NavigationIndexProvider(
      initialIndex,
    );
  }

  @override
  NavigationIndexProvider getProviderOverride(
    covariant NavigationIndexProvider provider,
  ) {
    return call(
      provider.initialIndex,
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
  String? get name => r'navigationIndexProvider';
}

/// See also [NavigationIndex].
class NavigationIndexProvider
    extends NotifierProviderImpl<NavigationIndex, int> {
  /// See also [NavigationIndex].
  NavigationIndexProvider(
    int initialIndex,
  ) : this._internal(
          () => NavigationIndex()..initialIndex = initialIndex,
          from: navigationIndexProvider,
          name: r'navigationIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$navigationIndexHash,
          dependencies: NavigationIndexFamily._dependencies,
          allTransitiveDependencies:
              NavigationIndexFamily._allTransitiveDependencies,
          initialIndex: initialIndex,
        );

  NavigationIndexProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialIndex,
  }) : super.internal();

  final int initialIndex;

  @override
  int runNotifierBuild(
    covariant NavigationIndex notifier,
  ) {
    return notifier.build(
      initialIndex,
    );
  }

  @override
  Override overrideWith(NavigationIndex Function() create) {
    return ProviderOverride(
      origin: this,
      override: NavigationIndexProvider._internal(
        () => create()..initialIndex = initialIndex,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        initialIndex: initialIndex,
      ),
    );
  }

  @override
  NotifierProviderElement<NavigationIndex, int> createElement() {
    return _NavigationIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NavigationIndexProvider &&
        other.initialIndex == initialIndex;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialIndex.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NavigationIndexRef on NotifierProviderRef<int> {
  /// The parameter `initialIndex` of this provider.
  int get initialIndex;
}

class _NavigationIndexProviderElement
    extends NotifierProviderElement<NavigationIndex, int>
    with NavigationIndexRef {
  _NavigationIndexProviderElement(super.provider);

  @override
  int get initialIndex => (origin as NavigationIndexProvider).initialIndex;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
