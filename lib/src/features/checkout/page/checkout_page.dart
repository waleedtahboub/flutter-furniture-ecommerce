import 'package:flutter/material.dart';
import 'package:furniture_store_app/src/features/checkout/widgets/checkout_details.dart';
import 'package:furniture_store_app/src/features/checkout/widgets/fields.dart';
import 'package:furniture_store_app/src/features/checkout/widgets/order_list.dart';
import 'package:go_router/go_router.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});
  static const String routePath = 'checkout';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new, size: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Fields(),
                  SizedBox(height: 20),
                  OrderList(),
                  SizedBox(height: 20),
                  CheckoutDetails(),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: const Text('Continue')),
            ],
          ),
        ),
      ),
    );
  }
}
