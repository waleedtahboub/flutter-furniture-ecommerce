import 'package:flutter/material.dart';
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
  String buttonText = 'Add to Cart';

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
                  onPressed: () {
                    myCartItems.add(widget.product);
                    setState(() {
                      buttonText = 'Added!';
                    });
                  },
                  child: Text(buttonText),
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
