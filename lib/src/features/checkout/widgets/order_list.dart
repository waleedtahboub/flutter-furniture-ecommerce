import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_store_app/src/features/cart/provider/cart_provider.dart';
import 'package:furniture_store_app/src/features/checkout/widgets/order_item_card.dart';

class OrderList extends ConsumerWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartList = ref.watch(cartProviderProvider).value ?? [];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Order List (${cartList.length})',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 219,
          width: double.infinity,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return OrderItemCard(cartItem: cartList[index]);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 12);
            },
            itemCount: cartList.length,
          ),
        ),
      ],
    );
  }
}
