import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/models/cart_model/cart_item_model.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/src/features/product_details_page/page/product_details_page.dart';
import 'package:go_router/go_router.dart';
import 'package:furniture_store_app/common/utils/formatters/app_formatters.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:furniture_store_app/src/features/home/widgets/product_badge.dart';
import 'package:furniture_store_app/src/features/cart/my_cart.dart';

class CustomAllProducts extends StatefulWidget {
  const CustomAllProducts({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  State<CustomAllProducts> createState() => _CustomSectionCardState();
}

class _CustomSectionCardState extends State<CustomAllProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(
              13,
            ), // 13 is ~0.05 opacity in 0-255 scale
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          context.push(ProductDetailsPage.routePath, extra: widget.product);
        },
        borderRadius: BorderRadius.circular(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: AppColor.secondary,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),

                  child: CachedNetworkImage(
                    imageUrl: widget.product.imageUrl,
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                    errorWidget: (context, url, error) => const Icon(
                      Icons.image_not_supported_outlined,
                      color: AppColor.onSecondary,
                    ),
                  ),
                ),

                // Badges
                Positioned(
                  top: 12,
                  left: 12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (widget.product.isBestseller)
                        const ProductBadge(
                          text: 'BESTSELLER',
                          color: Color(0xff1DB954),
                        ),
                      if (widget.product.is50PercentOff)
                        const Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: ProductBadge(
                            text: '50% OFF',
                            color: Color(0xffEE3633),
                          ),
                        ),
                      if (widget.product.isFlashDeal)
                        const Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: ProductBadge(
                            text: 'FLASH DEAL',
                            color: Color(0xffD47222),
                          ),
                        ),
                    ],
                  ),
                ),

                // Favorite Button
                Positioned(
                  top: 12,
                  right: 12,
                  child: InkWell(
                    onTap: () {
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withAlpha(230), // ~0.9 opacity
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withAlpha(25), // ~0.1 opacity
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Icon(
                        widget.product.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: 20,
                        color: widget.product.isFavorite
                            ? Colors.red
                            : AppColor.onSecondary,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Info Section
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.product.categoryName.toUpperCase(),
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: AppColor.onSecondary,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: AppColor.star,
                            size: 14,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            widget.product.rating.toStringAsFixed(1),
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.product.name,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (widget.product.salePrice <
                              widget.product.basePrice)
                            Text(
                              AppCurrencyFormatter.format(
                                widget.product.basePrice,
                              ),
                              style: Theme.of(context).textTheme.bodySmall
                                  ?.copyWith(
                                    color: AppColor.onSecondary,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                            ),
                          Text(
                            AppCurrencyFormatter.format(
                              widget.product.salePrice,
                            ),
                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(
                                  color: AppColor.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),

                      // Add to Cart Button
                      InkWell(
                        onTap: () {
                          int existingIndex = myCartItems.indexWhere(
                            (element) =>
                                element.product.id == widget.product.id,
                          );
                          setState(() {
                            if (existingIndex != -1) {
                              myCartItems[existingIndex] =
                                  myCartItems[existingIndex].copyWith(
                                    quantity:
                                        myCartItems[existingIndex].quantity + 1,
                                  );
                            } else {
                              myCartItems.add(
                                CartItemModel(
                                  product: widget.product,
                                  quantity: 1,
                                ),
                              );
                            }
                          });

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Added to cart!'),
                              duration: Duration(seconds: 1),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColor.primary,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.add_shopping_cart_rounded,
                            color: Colors.white,
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
