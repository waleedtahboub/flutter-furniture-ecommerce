import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_store_app/common/models/cart_model/cart_item_model.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/common/utils/extensions/build_context_extension.dart';
import 'package:furniture_store_app/src/features/cart/provider/cart_provider.dart';
import 'package:furniture_store_app/src/features/product_details_page/page/product_details_page.dart';
import 'package:furniture_store_app/common/utils/formatters/app_formatters.dart';

class CustomSectionCard extends ConsumerStatefulWidget {
  const CustomSectionCard({super.key, required this.product});

  final ProductModel product;

  @override
  ConsumerState<CustomSectionCard> createState() => _CustomSectionCardState();
}

class _CustomSectionCardState extends ConsumerState<CustomSectionCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.navigateToProductDetails(
          widget.product.id,
          ProductDetailsPage.routePath,
        );
      },
      child: SizedBox(
        height: 230,
        width: 226,
        child: Column(
          children: [
            const SizedBox(height: 10),
            SizedBox(
              height: 130,
              width: 230,
              child: Stack(
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    height: 130,
                    width: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.network(
                      widget.product.imageUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,

                    child: InkWell(
                      onTap: () {
                        // Trigger the callback when tapped!
                      },
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          widget.product.isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          size: 20,
                          color: widget.product.isFavorite
                              ? Colors.red
                              : context.colorScheme.onSecondary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            SizedBox(
              height: 88,
              width: 230,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const SizedBox(height: 22),
                      Text(
                        widget.product.categoryName,
                        style: context.textTheme.bodyMedium,
                      ),
                      const Spacer(),
                      const Icon(Icons.star, color: AppColor.star, size: 18),

                      Text(
                        widget.product.rating.toStringAsFixed(1),
                        style: context.textTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.product.name,
                    style: context.textTheme.titleSmall,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        AppCurrencyFormatter.format(widget.product.salePrice),
                        style: context.textTheme.titleMedium,
                      ),
                      Text(
                        AppCurrencyFormatter.format(widget.product.basePrice),
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: AppColor.onSecondary,
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 2,
                          decorationColor: AppColor.onSecondary,
                        ),
                      ),

                      const Spacer(),
                      InkWell(
                        onTap: () {
                          ref
                              .read(cartProviderProvider.notifier)
                              .addItem(
                                CartItemModel(
                                  id: widget.product.id,
                                  product: widget.product,
                                  quantity: 1,
                                ),
                              );
                        },
                        child: Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            color: context.colorScheme.primary,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: AppColor.onPrimary,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
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
