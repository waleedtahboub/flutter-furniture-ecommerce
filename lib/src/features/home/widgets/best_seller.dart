import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/src/features/home/page/home_page.dart';
import 'package:furniture_store_app/common/app/router/app_router.dart';
import 'package:furniture_store_app/src/features/home/page/view_all_products_page.dart';
import 'package:furniture_store_app/src/features/home/widgets/custom_section_card.dart';
import 'package:go_router/go_router.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key, required this.favoriteCallback, required this.products});

  final ProductCallback favoriteCallback;
  final List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text(
                'Best Sellers',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  context.push(
                    ViewAllProductsPage.routePath,
                    extra: ViewAllParams(
                      title: 'Best Sellers',
                      products: products,
                      favoriteCallback: favoriteCallback,
                    ),
                  );
                },
                child: Text(
                  'View all',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    decoration: TextDecoration.underline,
                    color: AppColor.primary,
                    decorationColor: AppColor.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 240,
          child: ListView.separated(
            padding: const EdgeInsets.only(left: 20.0),
            physics: const BouncingScrollPhysics(),

            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return CustomSectionCard(
                product: product,
                favoriteCallback: favoriteCallback,
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 30),
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
