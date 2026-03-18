import 'package:flutter/material.dart';
import 'package:furniture_store_app/src/features/cart/my_cart.dart';
import 'package:furniture_store_app/src/features/checkout/widgets/order_item_card.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Order List (${myCartItems.length})',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 219,
          width: double.infinity,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return OrderItemCard(product: myCartItems[index]);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 12);
            },
            itemCount: myCartItems.length,
          ),
        ),
      ],
    );
  }
}
