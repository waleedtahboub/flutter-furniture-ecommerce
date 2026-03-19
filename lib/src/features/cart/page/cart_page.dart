import 'package:flutter/material.dart';
import 'package:furniture_store_app/src/features/cart/my_cart.dart';
import 'package:furniture_store_app/src/features/cart/page/empty_cart_page.dart';
import 'package:furniture_store_app/src/features/cart/page/filled_cart_view.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});
  static const String routePath = '/cart';
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    bool isCartEmpty = myCartItems.isEmpty;
    if (isCartEmpty) {
      return const EmptyCartPage();
    } else {
      return const FilledCartView();
    }
  }
}
