import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/src/features/auth/login/page/login_page.dart';
import 'package:furniture_store_app/src/features/category/page/category_page.dart';
import 'package:furniture_store_app/src/features/home/widgets/custom_section_card/custom_section_card.dart';
import 'package:go_router/go_router.dart';
import 'package:furniture_store_app/src/features/category/models/category_type.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  static const String routePath = '/';
  final List<ProductModel> products = [
    ProductModel(
      imagePath: CategoryType.diningRoom.imagePath,
      productName: 'Elegant Dining Table',
      productCategory: CategoryType.diningRoom.title,
      productRating: '4.7',
      productPrice: '\$320 ',
    ),
    ProductModel(
      imagePath: CategoryType.diningRoom.imagePath,
      productName: 'Elegant Dining Table',
      productCategory: CategoryType.diningRoom.title,
      productRating: '4.7',
      productPrice: '\$320 ',
    ),
    ProductModel(
      imagePath: CategoryType.office.imagePath,
      productName: 'Ergonomic Office Chair ',
      productCategory: CategoryType.office.title,
      productRating: '4.6',
      productPrice: '\$150 ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 10,
        title: InkWell(
          onTap: () {},
          child: Row(
            children: [
              const Icon(Icons.location_on_sharp),

              Text(
                '  Select location',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            color: Theme.of(context).colorScheme.outline,
            icon: const Icon(Icons.notifications_none_outlined),
          ),
        ],
        centerTitle: false,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 200),
            Column(
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
                          style: Theme.of(context).textTheme.labelMedium
                              ?.copyWith(
                                decoration: TextDecoration.underline,
                                color: AppColor.primary,
                                decorationColor: AppColor.primary,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 91,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  final category = CategoryType.values[index];
                  return InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: 69,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 58,
                            width: 58,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(category.imagePath),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            category.title,
                            style: Theme.of(context).textTheme.bodyMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(width: 30),
              ),
            ),

            Column(
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
                        onPressed: () {},
                        child: Text(
                          'View all',
                          style: Theme.of(context).textTheme.labelMedium
                              ?.copyWith(
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
                      return CustomSectionCard(product: product);
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 30),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),

            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        'Flash deals',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'View all',
                          style: Theme.of(context).textTheme.labelMedium
                              ?.copyWith(
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
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return CustomSectionCard(product: product);
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 30),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),

            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        '50% off',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'View all',
                          style: Theme.of(context).textTheme.labelMedium
                              ?.copyWith(
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
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return CustomSectionCard(product: product);
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 30),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () => context.go(LoginPage.routePath),
              child: const Text('click me to go to login page'),
            ),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
