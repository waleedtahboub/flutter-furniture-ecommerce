import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/models/cart_model/cart_item_model.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/common/utils/formatters/app_formatters.dart';

class OrderItemCard extends StatelessWidget {
  const OrderItemCard({super.key, required this.cartItem});
  final CartItemModel cartItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 335,
        height: 65,
        decoration: BoxDecoration(
          border: BoxBorder.all(color: AppColor.cartItemContainerOutline),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 10),
              child: Container(
                height: 49,
                width: 98,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Image.network(
                  cartItem.product.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        cartItem.product.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'x${cartItem.quantity}',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),
                  Text(
                    AppCurrencyFormatter.format(cartItem.product.basePrice),
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: AppColor.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
