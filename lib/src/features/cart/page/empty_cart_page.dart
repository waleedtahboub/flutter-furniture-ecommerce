import 'package:flutter/material.dart';
import 'package:furniture_store_app/src/features/home/page/home_page.dart';
import 'package:go_router/go_router.dart';

class EmptyCartPage extends StatelessWidget {
  const EmptyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Shopping Cart is Empty! ',
                style: Theme.of(
                  context,
                ).textTheme.labelLarge?.copyWith(fontSize: 18),
              ),
              const SizedBox(height: 70),
              SizedBox(
                width: 128,
                height: 110,
                child: Image.asset('assets/images/cart/cart_image.png'),
              ),

              const SizedBox(height: 200),
              ElevatedButton(
                onPressed: () {
                  context.go(HomePage.routePath);
                },
                child: const Text('Start Shopping'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
