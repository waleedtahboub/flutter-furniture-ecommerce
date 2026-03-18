import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart'
    show ProductModel;
import 'package:furniture_store_app/common/utils/formatters/app_formatters.dart';
import 'package:furniture_store_app/src/features/cart/widgets/cart_item_card.dart';
import 'package:furniture_store_app/src/features/checkout/page/checkout_page.dart';
import 'package:furniture_store_app/src/features/cart/my_cart.dart';
import 'package:go_router/go_router.dart';

class FilledCartView extends StatefulWidget {
  FilledCartView({super.key});
  final List<ProductModel> cartItems = myCartItems;

  @override
  State<FilledCartView> createState() => _FilledCartViewState();
}

class _FilledCartViewState extends State<FilledCartView> {
  double get totalPrice {
    double total = 0;
    for (var item in widget.cartItems) {
      total += item.salePrice;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListView.separated(
                      itemCount: widget.cartItems.length,

                      itemBuilder: (context, index) {
                        return CartItemCard(product: widget.cartItems[index]);
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 20);
                      },
                    ),
                  ),

                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Total ',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '(${widget.cartItems.length} items)',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const Spacer(),
                      Text(
                        AppCurrencyFormatter.format(totalPrice),
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  Text(
                    '*Shipping and taxes are calculated at the checkout*',
                    style: Theme.of(
                      context,
                    ).textTheme.labelMedium?.copyWith(fontSize: 13),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.push(CheckoutPage.routePath);
            },
            child: const Text('Proceed to Checkout'),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
