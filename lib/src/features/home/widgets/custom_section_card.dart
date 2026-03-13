import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/common/resources/app_color.dart'; // Add this import
import 'package:furniture_store_app/src/features/home/page/home_page.dart';
import 'package:furniture_store_app/src/features/product_details_page/product_details_page.dart';
import 'package:go_router/go_router.dart'; // Add Callback import


class CustomSectionCard extends StatefulWidget {
  const CustomSectionCard({
    super.key,
    required this.product,
    required this.favoriteCallback,
  });

  final ProductModel product;
  final ProductCallback favoriteCallback;

  @override
  State<CustomSectionCard> createState() => _CustomSectionCardState();
}

class _CustomSectionCardState extends State<CustomSectionCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go(ProductDetailsPage.routePath, extra: widget.product);
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
                    child: Image.asset(
                      widget.product.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,

                    child: InkWell(
                      onTap: () {
                        // Trigger the callback when tapped!
                        widget.favoriteCallback.onFavoriteToggled(
                          widget.product,
                        );
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
                        widget.product.category,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const Spacer(),
                      const Icon(Icons.star, color: AppColor.star, size: 18),

                      Text(
                        widget.product.rating,
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
                        widget.product.basePrice,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        widget.product.salePrice,
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
                          setState(() {});
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
