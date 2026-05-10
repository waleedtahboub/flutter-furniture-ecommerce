// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CartProvider)
final cartProviderProvider = CartProviderProvider._();

final class CartProviderProvider
    extends $AsyncNotifierProvider<CartProvider, List<CartItemModel>> {
  CartProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartProviderHash();

  @$internal
  @override
  CartProvider create() => CartProvider();
}

String _$cartProviderHash() => r'2b3a753f7dd900535f758dcdf2caa60a61ad059b';

abstract class _$CartProvider extends $AsyncNotifier<List<CartItemModel>> {
  FutureOr<List<CartItemModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<CartItemModel>>, List<CartItemModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<CartItemModel>>, List<CartItemModel>>,
              AsyncValue<List<CartItemModel>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(cartTotal)
final cartTotalProvider = CartTotalProvider._();

final class CartTotalProvider
    extends $FunctionalProvider<double, double, double>
    with $Provider<double> {
  CartTotalProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartTotalProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartTotalHash();

  @$internal
  @override
  $ProviderElement<double> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  double create(Ref ref) {
    return cartTotal(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(double value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<double>(value),
    );
  }
}

String _$cartTotalHash() => r'a4c6f2d7bc151f53f1f65503dbe0b9c559f57532';
