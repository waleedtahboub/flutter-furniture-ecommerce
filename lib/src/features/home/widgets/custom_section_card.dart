import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/models/cart_model/cart_item_model.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:go_router/go_router.dart';
import 'package:furniture_store_app/common/utils/formatters/app_formatters.dart';
import 'package:furniture_store_app/src/features/cart/my_cart.dart';

class CustomSectionCard extends StatefulWidget {
  const CustomSectionCard({super.key, required this.product});

  final ProductModel product;

  @override
  State<CustomSectionCard> createState() => _CustomSectionCardState();
}

class _CustomSectionCardState extends State<CustomSectionCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push('/product_details/${widget.product.id}');
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
                              : Theme.of(context).colorScheme.onSecondary,
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
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const Spacer(),
                      const Icon(Icons.star, color: AppColor.star, size: 18),

                      Text(
                        widget.product.rating.toStringAsFixed(1),
                        style: Theme.of(context).textTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.product.name,
                    style: Theme.of(context).textTheme.titleSmall,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        AppCurrencyFormatter.format(widget.product.salePrice),
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        AppCurrencyFormatter.format(widget.product.basePrice),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColor.onSecondary,
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 2,
                          decorationColor: AppColor.onSecondary,
                        ),
                      ),

                      const Spacer(),
                      InkWell(
                        onTap: () {
                          int existingIndex = myCartItems.indexWhere(
                            (element) =>
                                element.product.name == widget.product.name,
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
                        },
                        child: Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
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
