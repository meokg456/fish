// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_detail.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postDetailHash() => r'59644da85f2c0038ad0ce8798a3e6d0671e768fd';

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

abstract class _$PostDetail extends BuildlessAutoDisposeAsyncNotifier<int> {
  late final int id;

  FutureOr<int> build(
    int id,
  );
}

/// See also [PostDetail].
@ProviderFor(PostDetail)
const postDetailProvider = PostDetailFamily();

/// See also [PostDetail].
class PostDetailFamily extends Family<AsyncValue<int>> {
  /// See also [PostDetail].
  const PostDetailFamily();

  /// See also [PostDetail].
  PostDetailProvider call(
    int id,
  ) {
    return PostDetailProvider(
      id,
    );
  }

  @override
  PostDetailProvider getProviderOverride(
    covariant PostDetailProvider provider,
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
  String? get name => r'postDetailProvider';
}

/// See also [PostDetail].
class PostDetailProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PostDetail, int> {
  /// See also [PostDetail].
  PostDetailProvider(
    int id,
  ) : this._internal(
          () => PostDetail()..id = id,
          from: postDetailProvider,
          name: r'postDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postDetailHash,
          dependencies: PostDetailFamily._dependencies,
          allTransitiveDependencies:
              PostDetailFamily._allTransitiveDependencies,
          id: id,
        );

  PostDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  FutureOr<int> runNotifierBuild(
    covariant PostDetail notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(PostDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: PostDetailProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<PostDetail, int> createElement() {
    return _PostDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostDetailRef on AutoDisposeAsyncNotifierProviderRef<int> {
  /// The parameter `id` of this provider.
  int get id;
}

class _PostDetailProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PostDetail, int>
    with PostDetailRef {
  _PostDetailProviderElement(super.provider);

  @override
  int get id => (origin as PostDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
