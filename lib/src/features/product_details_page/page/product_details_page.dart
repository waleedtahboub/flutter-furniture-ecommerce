import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_store_app/common/models/cart_model/cart_item_model.dart';
import 'package:furniture_store_app/src/features/cart/my_cart.dart';
import 'package:furniture_store_app/src/features/product_details_page/products/provider/product_details_provider.dart';
import 'package:furniture_store_app/src/features/product_details_page/widgets/rating_section.dart';
import 'package:furniture_store_app/src/features/product_details_page/widgets/color_section.dart';
import 'package:furniture_store_app/src/features/product_details_page/widgets/head_section.dart';
import 'package:furniture_store_app/src/features/product_details_page/widgets/product_information.dart';

class ProductDetailsPage extends ConsumerStatefulWidget {
  const ProductDetailsPage({super.key, required this.productId});
  static const String routePath = '/product_details';
  final String productId;
  @override
  ConsumerState<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends ConsumerState<ProductDetailsPage> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    final detailState = ref.watch(productDetailProvider(widget.productId));
    return detailState.when(
      data: (product) {
        if (product == null) {
          return const Scaffold(body: Text('Product not found'));
        }
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
                    HeadSection(product: product),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProductInformation(product: product),

                          const SizedBox(height: 20),

                          ColorSection(product: product),
                          RatingSection(product: product),
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
                                    wrapper.product.name == product.name,
                              );
                              if (existingIndex != -1) {
                                final oldItem = myCartItems[existingIndex];
                                myCartItems[existingIndex] = oldItem.copyWith(
                                  quantity: oldItem.quantity + 1,
                                );
                              } else {
                                // 3. We didn't find it! Make a brand new wrapper and push it.
                                myCartItems.add(
                                  CartItemModel(product: product, quantity: 1),
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
      },
      loading: () {
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      },
      error: (error, stackTrace) {
        return Scaffold(body: Center(child: Text('ERROR: $error')));
      },
    );
  }
}
