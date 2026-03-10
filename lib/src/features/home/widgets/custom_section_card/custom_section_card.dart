import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/common/resources/app_color.dart'; // Add this import

class CustomSectionCard extends StatelessWidget {
  const CustomSectionCard({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
                    child: Image.asset(product.imagePath, fit: BoxFit.cover),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,

                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.favorite_border,
                          size: 20,
                          color: Colors.black87,
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
                        product.productCategory,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const Spacer(),
                      const Icon(Icons.star, color: AppColor.star, size: 18),

                      Text(
                        product.productRating,
                        style: Theme.of(context).textTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    product.productName,
                    style: Theme.of(context).textTheme.titleSmall,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        product.productPrice,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '\$400',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColor.onSecondary,
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 2,
                          decorationColor: AppColor.onSecondary,
                        ),
                      ),

                      const Spacer(),
                      InkWell(
                        onTap: () {},
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
