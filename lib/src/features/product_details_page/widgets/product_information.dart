import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/common/utils/formatters/app_formatters.dart';
import 'package:readmore/readmore.dart';

class ProductInformation extends StatelessWidget {
  const ProductInformation({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const SizedBox(height: 22),
            Text(
              product.categoryName,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Theme.of(context).colorScheme.outline,
              ),
            ),
            const Spacer(),
            const Icon(Icons.star, color: AppColor.star, size: 25),
            Text(
              product.rating.toStringAsFixed(1),
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Theme.of(context).colorScheme.outline,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        ),
        Text(
          product.name,
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              AppCurrencyFormatter.format(product.salePrice),
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 24,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              AppCurrencyFormatter.format(product.basePrice),
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                decoration: TextDecoration.lineThrough,
                decorationThickness: 2,
                decorationColor: AppColor.onSecondary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          'Description',
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontSize: 19),
        ),
        const SizedBox(height: 10),

        ReadMoreText(
          product.description,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            inherit: true,
            color: Theme.of(context).colorScheme.onSurface,

            fontSize: 16,
          ),
          trimMode: TrimMode.Line,
          trimLines: 4,
          trimCollapsedText: 'See more',
          trimExpandedText: 'See less',
          moreStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
            decoration: TextDecoration.underline,
            fontSize: 16,
          ),
          lessStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
            decoration: TextDecoration.underline,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
