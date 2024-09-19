// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$commentsHash() => r'08eed2f25b05495c8f0b3cc50fe133b48450244b';

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

abstract class _$Comments
    extends BuildlessAutoDisposeAsyncNotifier<List<CommentModel>> {
  late final int postId;

  FutureOr<List<CommentModel>> build(
    int postId,
  );
}

/// See also [Comments].
@ProviderFor(Comments)
const commentsProvider = CommentsFamily();

/// See also [Comments].
class CommentsFamily extends Family<AsyncValue<List<CommentModel>>> {
  /// See also [Comments].
  const CommentsFamily();

  /// See also [Comments].
  CommentsProvider call(
    int postId,
  ) {
    return CommentsProvider(
      postId,
    );
  }

  @override
  CommentsProvider getProviderOverride(
    covariant CommentsProvider provider,
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
  String? get name => r'commentsProvider';
}

/// See also [Comments].
class CommentsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Comments, List<CommentModel>> {
  /// See also [Comments].
  CommentsProvider(
    int postId,
  ) : this._internal(
          () => Comments()..postId = postId,
          from: commentsProvider,
          name: r'commentsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$commentsHash,
          dependencies: CommentsFamily._dependencies,
          allTransitiveDependencies: CommentsFamily._allTransitiveDependencies,
          postId: postId,
        );

  CommentsProvider._internal(
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
  FutureOr<List<CommentModel>> runNotifierBuild(
    covariant Comments notifier,
  ) {
    return notifier.build(
      postId,
    );
  }

  @override
  Override overrideWith(Comments Function() create) {
    return ProviderOverride(
      origin: this,
      override: CommentsProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<Comments, List<CommentModel>>
      createElement() {
    return _CommentsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CommentsProvider && other.postId == postId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CommentsRef on AutoDisposeAsyncNotifierProviderRef<List<CommentModel>> {
  /// The parameter `postId` of this provider.
  int get postId;
}

class _CommentsProviderElement extends AutoDisposeAsyncNotifierProviderElement<
    Comments, List<CommentModel>> with CommentsRef {
  _CommentsProviderElement(super.provider);

  @override
  int get postId => (origin as CommentsProvider).postId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
