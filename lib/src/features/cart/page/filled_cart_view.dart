import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:furniture_store_app/common/utils/formatters/app_formatters.dart';
import 'package:furniture_store_app/src/features/cart/provider/cart_provider.dart';
import 'package:furniture_store_app/src/features/cart/widgets/cart_item_card.dart';
import 'package:furniture_store_app/src/features/checkout/page/checkout_page.dart';
import 'package:furniture_store_app/src/features/checkout/utils/checkout_calculator.dart';
import 'package:furniture_store_app/src/features/cart/page/cart_page.dart';
import 'package:go_router/go_router.dart';

class FilledCartView extends ConsumerStatefulWidget {
  const FilledCartView({super.key});

  @override
  ConsumerState<FilledCartView> createState() => _FilledCartViewState();
}

class _FilledCartViewState extends ConsumerState<FilledCartView> {
  @override
  Widget build(BuildContext context) {
    final cartList = ref.watch(cartProviderProvider).value ?? [];
    final total = ref.watch(cartTotalProvider);

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
                      itemCount: cartList.length,

                      itemBuilder: (context, index) {
                        return CartItemCard(
                          cartItem: cartList[index],
                          onIncrement: () {
                            final cartItem = cartList[index];

                            ref
                                .read(cartProviderProvider.notifier)
                                .updateQuantity(cartItem.id, 1);
                          },
                          onDecrement: () {
                            final cartItem = cartList[index];
                            ref
                                .read(cartProviderProvider.notifier)
                                .updateQuantity(cartItem.id, -1);
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
                        '(${cartList.length} items)',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const Spacer(),
                      Text(
                        AppCurrencyFormatter.format((total)),
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
              context.go('/${CartPage.routePath}/${CheckoutPage.routePath}');
            },
            child: const Text('Proceed to Checkout'),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
