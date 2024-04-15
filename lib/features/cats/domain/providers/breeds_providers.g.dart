// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breeds_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$catDatasourceImplHash() => r'd82843ab7f0a614718feb82c9bc1d9a99498705d';

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

/// See also [catDatasourceImpl].
@ProviderFor(catDatasourceImpl)
const catDatasourceImplProvider = CatDatasourceImplFamily();

/// See also [catDatasourceImpl].
class CatDatasourceImplFamily extends Family<CatRemoteDataSource> {
  /// See also [catDatasourceImpl].
  const CatDatasourceImplFamily();

  /// See also [catDatasourceImpl].
  CatDatasourceImplProvider call(
    NetworkService networkService,
  ) {
    return CatDatasourceImplProvider(
      networkService,
    );
  }

  @override
  CatDatasourceImplProvider getProviderOverride(
    covariant CatDatasourceImplProvider provider,
  ) {
    return call(
      provider.networkService,
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
  String? get name => r'catDatasourceImplProvider';
}

/// See also [catDatasourceImpl].
class CatDatasourceImplProvider
    extends AutoDisposeProvider<CatRemoteDataSource> {
  /// See also [catDatasourceImpl].
  CatDatasourceImplProvider(
    NetworkService networkService,
  ) : this._internal(
          (ref) => catDatasourceImpl(
            ref as CatDatasourceImplRef,
            networkService,
          ),
          from: catDatasourceImplProvider,
          name: r'catDatasourceImplProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$catDatasourceImplHash,
          dependencies: CatDatasourceImplFamily._dependencies,
          allTransitiveDependencies:
              CatDatasourceImplFamily._allTransitiveDependencies,
          networkService: networkService,
        );

  CatDatasourceImplProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.networkService,
  }) : super.internal();

  final NetworkService networkService;

  @override
  Override overrideWith(
    CatRemoteDataSource Function(CatDatasourceImplRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CatDatasourceImplProvider._internal(
        (ref) => create(ref as CatDatasourceImplRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        networkService: networkService,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<CatRemoteDataSource> createElement() {
    return _CatDatasourceImplProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CatDatasourceImplProvider &&
        other.networkService == networkService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, networkService.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CatDatasourceImplRef on AutoDisposeProviderRef<CatRemoteDataSource> {
  /// The parameter `networkService` of this provider.
  NetworkService get networkService;
}

class _CatDatasourceImplProviderElement
    extends AutoDisposeProviderElement<CatRemoteDataSource>
    with CatDatasourceImplRef {
  _CatDatasourceImplProviderElement(super.provider);

  @override
  NetworkService get networkService =>
      (origin as CatDatasourceImplProvider).networkService;
}

String _$catRepositoryImplHash() => r'88d20a28082620f46b75ac01f5930f96bf0cf774';

/// See also [catRepositoryImpl].
@ProviderFor(catRepositoryImpl)
final catRepositoryImplProvider = AutoDisposeProvider<CatUsecases>.internal(
  catRepositoryImpl,
  name: r'catRepositoryImplProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$catRepositoryImplHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CatRepositoryImplRef = AutoDisposeProviderRef<CatUsecases>;
String _$catBreedsHash() => r'1806da2fbc7a50c1bd2678be955469c27f2516b1';

/// See also [catBreeds].
@ProviderFor(catBreeds)
final catBreedsProvider = AutoDisposeFutureProvider<List<CatEntity>>.internal(
  catBreeds,
  name: r'catBreedsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$catBreedsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CatBreedsRef = AutoDisposeFutureProviderRef<List<CatEntity>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
