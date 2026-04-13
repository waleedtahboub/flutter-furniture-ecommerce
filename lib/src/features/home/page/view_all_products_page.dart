import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/src/features/home/page/home_page.dart';
import 'package:furniture_store_app/src/features/home/widgets/custom_all_products.dart';
import 'package:go_router/go_router.dart';

class ViewAllProductsPage extends StatelessWidget {
  const ViewAllProductsPage({
    super.key,
    required this.title,
    required this.products,
    required this.favoriteCallback,
  });

  final String title;
  final List<ProductModel> products;
  final ProductCallback favoriteCallback;

  static const String routePath = '/view-all';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
        ),
      ),
      body: products.isEmpty
          ? const Center(child: Text('No products found.'))
          : ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: products.length,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) {
                final product = products[index];
                return CustomAllProducts(
                  product: product,
                  favoriteCallback: favoriteCallback,
                );
              },
            ),
    );
  }
}
