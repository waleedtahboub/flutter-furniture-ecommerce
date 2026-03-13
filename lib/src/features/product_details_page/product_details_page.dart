import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/src/features/product_details_page/color_section.dart';
import 'package:furniture_store_app/src/features/product_details_page/head_section.dart';
import 'package:furniture_store_app/src/features/product_details_page/product_information.dart';
import 'package:furniture_store_app/src/features/product_details_page/rating_section.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key, required this.product});
  static const String routePath = '/product_details';
  final ProductModel product;
  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                const HeadSection(),

                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductInformation(product: widget.product),

                      const SizedBox(height: 20),

                      ColorSection(product: widget.product),
                      RatingSection(product: widget.product),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: const ButtonStyle(alignment: Alignment.center),
                  onPressed: () {},
                  child: const Text('Add to Cart'),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
