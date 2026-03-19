import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';

import 'package:furniture_store_app/common/utils/formatters/app_formatters.dart';
import 'package:furniture_store_app/src/features/cart/my_cart.dart';
import 'package:furniture_store_app/src/features/checkout/utils/checkout_calculator.dart';

class CheckoutDetails extends StatelessWidget {
  const CheckoutDetails({super.key});

  @override
  Widget build(BuildContext context) {
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
                CheckoutCalculator.originalTotal(myCartItems),
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
                CheckoutCalculator.discount(myCartItems),
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
                CheckoutCalculator.tax(
                  CheckoutCalculator.subtotal(myCartItems),
                ),
              ),
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const Divider(
          color: AppColor.dragHandleColor, // Or any gray color
          thickness: 1,
          height: 40, // The total space the divider takes including padding
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Total ', style: Theme.of(context).textTheme.titleMedium),
            Text(
              '(${myCartItems.fold(0, (sum, item) => sum + item.quantity)} items)',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const Spacer(),
            Text(
              AppCurrencyFormatter.format(
                (CheckoutCalculator.total(myCartItems)),
              ),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ],
    );
  }
}
