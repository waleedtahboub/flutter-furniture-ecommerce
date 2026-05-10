import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_store_app/src/features/cart/page/empty_cart_page.dart';
import 'package:furniture_store_app/src/features/cart/page/filled_cart_view.dart';
import 'package:furniture_store_app/src/features/cart/provider/cart_provider.dart';

class CartPage extends ConsumerStatefulWidget {
  const CartPage({super.key});
  static const String routePath = 'cart';
  @override
  ConsumerState<CartPage> createState() => _CartPageState();
}

class _CartPageState extends ConsumerState<CartPage> {
  @override
  Widget build(BuildContext context) {
    final cartList = ref.watch(cartProviderProvider).value ?? [];

    bool isCartEmpty = cartList.isEmpty;
    if (isCartEmpty) {
      return const EmptyCartPage();
    } else {
      return const FilledCartView();
    }
  }
}
