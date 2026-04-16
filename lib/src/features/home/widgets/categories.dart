import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_store_app/common/app/router/app_router.dart';
import 'package:furniture_store_app/common/models/category_model/category_model.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/src/features/category/page/category_page.dart';
import 'package:furniture_store_app/src/features/home/page/view_all_products_page.dart';
import 'package:furniture_store_app/src/features/home/provider/home_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';


class Categories extends ConsumerWidget {
  const Categories({super.key, required this.categories});
  final List<CategoryModel> categories;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text(
                'Categories ',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  context.go(CategoryPage.routePath);
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
          height: 100,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              return InkWell(
                onTap: () {
                  // 1. Tell the database to start searching for this category
                  ref
                      .read(homeProvider.notifier)
                      .fetchByCategory(category.title);

                  // 2. Fly to the View All page!
                  context.push(
                    ViewAllProductsPage.routePath,
                    extra: ViewAllParams(
                      title: category.title,
                      products: <ProductModel>[], // Start with an empty list, the provider will fill it!
                      
                    ),
                  );
                },
                child: SizedBox(
                  width: 69,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 58,
                        width: 58,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(category.imageUrl),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 40,
                        child: Text(
                          category.title,
                          style: Theme.of(context).textTheme.titleSmall,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 30),
          ),
        ),
      ],
    );
  }
}
