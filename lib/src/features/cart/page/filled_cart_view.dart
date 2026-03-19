import 'package:flutter/material.dart';

import 'package:furniture_store_app/common/utils/formatters/app_formatters.dart';
import 'package:furniture_store_app/src/features/cart/widgets/cart_item_card.dart';
import 'package:furniture_store_app/src/features/checkout/page/checkout_page.dart';
import 'package:furniture_store_app/src/features/cart/my_cart.dart';
import 'package:furniture_store_app/src/features/checkout/utils/checkout_calculator.dart';
import 'package:go_router/go_router.dart';

class FilledCartView extends StatefulWidget {
  const FilledCartView({super.key});

  @override
  State<FilledCartView> createState() => _FilledCartViewState();
}

class _FilledCartViewState extends State<FilledCartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Cart')),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListView.separated(
                      itemCount: myCartItems.length,

                      itemBuilder: (context, index) {
                        return CartItemCard(
                          cartItem: myCartItems[index],
                          onIncrement: () {
                            setState(() {
                              final cartItem = myCartItems[index];
                              myCartItems[index] = cartItem.copyWith(
                                quantity: cartItem.quantity + 1,
                              );
                            });
                          },
                          onDecrement: () {
                            if (myCartItems.isEmpty) {
                              Navigator.pop(context);
                            }
                            setState(() {
                              final cartItem = myCartItems[index];
                              if (cartItem.quantity > 1) {
                                myCartItems[index] = cartItem.copyWith(
                                  quantity: cartItem.quantity - 1,
                                );
                              } else {
                                myCartItems.removeAt(index);
                              }
                            });
                          },
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 20);
                      },
                    ),
                  ),

                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Total ',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '(${myCartItems.fold(0, (sum, item) => sum + item.quantity)} items)',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const Spacer(),
                      Text(
                        AppCurrencyFormatter.format(
                          CheckoutCalculator.subtotal(myCartItems),
                        ),
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  Text(
                    '*Shipping and taxes are calculated at the checkout*',
                    style: Theme.of(
                      context,
                    ).textTheme.labelMedium?.copyWith(fontSize: 13),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.push(CheckoutPage.routePath);
            },
            child: const Text('Proceed to Checkout'),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
