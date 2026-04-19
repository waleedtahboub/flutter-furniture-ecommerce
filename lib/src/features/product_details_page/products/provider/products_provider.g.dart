// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductsNotifier)
final productsProvider = ProductsNotifierProvider._();

final class ProductsNotifierProvider
    extends $AsyncNotifierProvider<ProductsNotifier, void> {
  ProductsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productsNotifierHash();

  @$internal
  @override
  ProductsNotifier create() => ProductsNotifier();
}

String _$productsNotifierHash() => r'566997e2019ce4d55f05f90f14b76c7e47b47ac8';

abstract class _$ProductsNotifier extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
