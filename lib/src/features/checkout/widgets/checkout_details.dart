import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';

import 'package:furniture_store_app/common/utils/formatters/app_formatters.dart';
import 'package:furniture_store_app/src/features/cart/provider/cart_provider.dart';
import 'package:furniture_store_app/src/features/checkout/utils/checkout_calculator.dart';

class CheckoutDetails extends ConsumerWidget {
  const CheckoutDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartList = ref.watch(cartProviderProvider).value ?? [];
    final total = ref.watch(cartTotalProvider);

    return Column(
      children: [
        Row(
          children: [
            Text(
              'Subtotal',
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Text(
              AppCurrencyFormatter.format(
                CheckoutCalculator.originalTotal(cartList),
              ),

              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Text(
              'Discount',
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Text(
              AppCurrencyFormatter.format(
                CheckoutCalculator.discount(cartList),
              ),

              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Text(
              'Delivery fees',
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Text(
              AppCurrencyFormatter.format(CheckoutCalculator.deliveryFee),

              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Text(
              'Tax',
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Text(
              AppCurrencyFormatter.format(
                CheckoutCalculator.tax(CheckoutCalculator.subtotal(cartList)),
              ),
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const Divider(
          color: AppColor.dragHandleColor,
          thickness: 1,
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Total ', style: Theme.of(context).textTheme.titleMedium),
            Text(
              '(${cartList.fold(0, (sum, item) => sum + item.quantity)} items)',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const Spacer(),
            Text(
              AppCurrencyFormatter.format(total),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ],
    );
  }
}
