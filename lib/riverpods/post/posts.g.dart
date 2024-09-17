// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postsHash() => r'6deec6b22227b75ea8f7bd83a0cb13526c666f59';

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

abstract class _$Posts
    extends BuildlessAutoDisposeAsyncNotifier<List<PostModel>> {
  late final int page;

  FutureOr<List<PostModel>> build(
    int page,
  );
}

/// See also [Posts].
@ProviderFor(Posts)
const postsProvider = PostsFamily();

/// See also [Posts].
class PostsFamily extends Family<AsyncValue<List<PostModel>>> {
  /// See also [Posts].
  const PostsFamily();

  /// See also [Posts].
  PostsProvider call(
    int page,
  ) {
    return PostsProvider(
      page,
    );
  }

  @override
  PostsProvider getProviderOverride(
    covariant PostsProvider provider,
  ) {
    return call(
      provider.page,
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
  String? get name => r'postsProvider';
}

/// See also [Posts].
class PostsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Posts, List<PostModel>> {
  /// See also [Posts].
  PostsProvider(
    int page,
  ) : this._internal(
          () => Posts()..page = page,
          from: postsProvider,
          name: r'postsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postsHash,
          dependencies: PostsFamily._dependencies,
          allTransitiveDependencies: PostsFamily._allTransitiveDependencies,
          page: page,
        );

  PostsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  FutureOr<List<PostModel>> runNotifierBuild(
    covariant Posts notifier,
  ) {
    return notifier.build(
      page,
    );
  }

  @override
  Override overrideWith(Posts Function() create) {
    return ProviderOverride(
      origin: this,
      override: PostsProvider._internal(
        () => create()..page = page,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<Posts, List<PostModel>>
      createElement() {
    return _PostsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostsProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostsRef on AutoDisposeAsyncNotifierProviderRef<List<PostModel>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _PostsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Posts, List<PostModel>>
    with PostsRef {
  _PostsProviderElement(super.provider);

  @override
  int get page => (origin as PostsProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
