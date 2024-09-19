// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$commentHash() => r'a736605218c56fc3e1b72d8677091114fe34fbfb';

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

abstract class _$Comment extends BuildlessAutoDisposeNotifier<CommentForm> {
  late final int postId;

  CommentForm build(
    int postId,
  );
}

/// See also [Comment].
@ProviderFor(Comment)
const commentProvider = CommentFamily();

/// See also [Comment].
class CommentFamily extends Family<CommentForm> {
  /// See also [Comment].
  const CommentFamily();

  /// See also [Comment].
  CommentProvider call(
    int postId,
  ) {
    return CommentProvider(
      postId,
    );
  }

  @override
  CommentProvider getProviderOverride(
    covariant CommentProvider provider,
  ) {
    return call(
      provider.postId,
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
  String? get name => r'commentProvider';
}

/// See also [Comment].
class CommentProvider
    extends AutoDisposeNotifierProviderImpl<Comment, CommentForm> {
  /// See also [Comment].
  CommentProvider(
    int postId,
  ) : this._internal(
          () => Comment()..postId = postId,
          from: commentProvider,
          name: r'commentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$commentHash,
          dependencies: CommentFamily._dependencies,
          allTransitiveDependencies: CommentFamily._allTransitiveDependencies,
          postId: postId,
        );

  CommentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postId,
  }) : super.internal();

  final int postId;

  @override
  CommentForm runNotifierBuild(
    covariant Comment notifier,
  ) {
    return notifier.build(
      postId,
    );
  }

  @override
  Override overrideWith(Comment Function() create) {
    return ProviderOverride(
      origin: this,
      override: CommentProvider._internal(
        () => create()..postId = postId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postId: postId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<Comment, CommentForm> createElement() {
    return _CommentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CommentProvider && other.postId == postId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CommentRef on AutoDisposeNotifierProviderRef<CommentForm> {
  /// The parameter `postId` of this provider.
  int get postId;
}

class _CommentProviderElement
    extends AutoDisposeNotifierProviderElement<Comment, CommentForm>
    with CommentRef {
  _CommentProviderElement(super.provider);

  @override
  int get postId => (origin as CommentProvider).postId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
