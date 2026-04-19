// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_repo_implementation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(productsRepo)
final productsRepoProvider = ProductsRepoProvider._();

final class ProductsRepoProvider
    extends $FunctionalProvider<ProductsRepo, ProductsRepo, ProductsRepo>
    with $Provider<ProductsRepo> {
  ProductsRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productsRepoProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productsRepoHash();

  @$internal
  @override
  $ProviderElement<ProductsRepo> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ProductsRepo create(Ref ref) {
    return productsRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductsRepo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductsRepo>(value),
    );
  }
}

String _$productsRepoHash() => r'db1594e5c9412142258e8810df06c3f2f17124e2';
