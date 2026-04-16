import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/src/features/home/widgets/custom_all_products.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({
    super.key,
    required this.products,
    required this.isFetchingMore,
  });
  final List<ProductModel> products;
  final bool isFetchingMore;
  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: widget.products.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final product = widget.products[index];
              return CustomAllProducts(
                product: product,
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 16);
            },
          ),
        ),
        if (widget.isFetchingMore)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Center(child: CircularProgressIndicator()),
          ),
      ],
    );
  }
}
