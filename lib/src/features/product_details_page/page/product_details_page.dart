import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/models/cart_model/cart_item_model.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/src/features/cart/my_cart.dart';
import 'package:furniture_store_app/src/features/product_details_page/widgets/rating_section.dart';
import 'package:furniture_store_app/src/features/product_details_page/widgets/color_section.dart';
import 'package:furniture_store_app/src/features/product_details_page/widgets/head_section.dart';
import 'package:furniture_store_app/src/features/product_details_page/widgets/product_information.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key, required this.product});
  static const String routePath = '/product_details';
  final ProductModel product;
  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new, size: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                const HeadSection(),

                Padding(
                  padding: const EdgeInsets.all(20.0),
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
                  onPressed: isAdded == true
                      ? null
                      : () async {
                          int existingIndex = myCartItems.indexWhere(
                            (wrapper) =>
                                wrapper.product.name == widget.product.name,
                          );
                          if (existingIndex != -1) {
                            final oldItem = myCartItems[existingIndex];
                            myCartItems[existingIndex] = oldItem.copyWith(
                              quantity: oldItem.quantity + 1,
                            );
                          } else {
                            // 3. We didn't find it! Make a brand new wrapper and push it.
                            myCartItems.add(
                              CartItemModel(
                                product: widget.product,
                                quantity: 1,
                              ),
                            );
                          }

                          setState(() {
                            isAdded = true;
                          });
                          await Future.delayed(const Duration(seconds: 3));
                          if (mounted) {
                            setState(() {
                              isAdded = false;
                            });
                          }
                        },
                  // The text changes automatically depending on the true/false variable
                  child: Text(isAdded ? 'Added!' : 'Add to Cart'),
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
