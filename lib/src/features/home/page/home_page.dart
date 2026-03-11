import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/src/features/auth/login/page/login_page.dart';
import 'package:furniture_store_app/src/features/home/widgets/best_seller.dart';
import 'package:furniture_store_app/src/features/home/widgets/categories.dart';
import 'package:furniture_store_app/src/features/home/widgets/discounts_by_percentage.dart';
import 'package:furniture_store_app/src/features/home/widgets/flash_deals.dart';
import 'package:furniture_store_app/src/features/home/widgets/search_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:furniture_store_app/src/features/home/models/products.dart';

abstract class ProductCallback {
  void onFavoriteToggled(ProductModel product);
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String routePath = '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> implements ProductCallback {
  @override
  void onFavoriteToggled(ProductModel product) {
    setState(() {
      final index = products.indexOf(product);
      products[index] = product.copyWith(isFavorite: !product.isFavorite);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Theme.of(context).colorScheme.surface,
        titleSpacing: 10,
        title: InkWell(
          onTap: () {},
          child: Row(
            children: [
              const Icon(Icons.location_on_sharp),

              Text(
                '  Select location',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: AppColor.onSurface,
                  fontSize: 16,
                ),
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
            const SizedBox(height: 5),
            const CustomSearchBar(),
            const SizedBox(height: 200),
            const Categories(),
            BestSeller(favoriteCallback: this),
            FlashDeals(favoriteCallback: this),
            DiscountsByPercentage(favoriteCallback: this),
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
