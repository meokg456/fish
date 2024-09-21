// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userProfileHash() => r'c45ddcd41a75f61b4ea5e45aadee02b64c75b360';

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

abstract class _$UserProfile
    extends BuildlessAutoDisposeAsyncNotifier<UserModel> {
  late final int id;

  FutureOr<UserModel> build(
    int id,
  );
}

/// See also [UserProfile].
@ProviderFor(UserProfile)
const userProfileProvider = UserProfileFamily();

/// See also [UserProfile].
class UserProfileFamily extends Family<AsyncValue<UserModel>> {
  /// See also [UserProfile].
  const UserProfileFamily();

  /// See also [UserProfile].
  UserProfileProvider call(
    int id,
  ) {
    return UserProfileProvider(
      id,
    );
  }

  @override
  UserProfileProvider getProviderOverride(
    covariant UserProfileProvider provider,
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
  String? get name => r'userProfileProvider';
}

/// See also [UserProfile].
class UserProfileProvider
    extends AutoDisposeAsyncNotifierProviderImpl<UserProfile, UserModel> {
  /// See also [UserProfile].
  UserProfileProvider(
    int id,
  ) : this._internal(
          () => UserProfile()..id = id,
          from: userProfileProvider,
          name: r'userProfileProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userProfileHash,
          dependencies: UserProfileFamily._dependencies,
          allTransitiveDependencies:
              UserProfileFamily._allTransitiveDependencies,
          id: id,
        );

  UserProfileProvider._internal(
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
  FutureOr<UserModel> runNotifierBuild(
    covariant UserProfile notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(UserProfile Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserProfileProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<UserProfile, UserModel>
      createElement() {
    return _UserProfileProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserProfileProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserProfileRef on AutoDisposeAsyncNotifierProviderRef<UserModel> {
  /// The parameter `id` of this provider.
  int get id;
}

class _UserProfileProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UserProfile, UserModel>
    with UserProfileRef {
  _UserProfileProviderElement(super.provider);

  @override
  int get id => (origin as UserProfileProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
