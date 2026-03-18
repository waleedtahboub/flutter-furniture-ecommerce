import 'package:flutter/material.dart';
import 'package:furniture_store_app/src/features/cart/page/empty_cart_page.dart';
import 'package:furniture_store_app/src/features/cart/page/filled_cart_view.dart';
import 'package:furniture_store_app/src/features/cart/my_cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});
  static const String routePath = '/cart';
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    bool isCartEmpty = false;
    if (isCartEmpty) {
      return const EmptyCartPage();
    } else {
      return FilledCartView();
    }
  }
}
