import 'package:flutter/material.dart';
import 'package:furniture_store_app/src/features/auth/create_account/page/create_account_page.dart';
import 'package:furniture_store_app/src/features/auth/login/page/login_page.dart';
import 'package:go_router/go_router.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  static const String routePath = '/GetStarted';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/on_boarding/final_page.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 100),
            Text('Discover', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 10),

            Text(
              'Pick the most comfy furniture for you',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 620),
            ElevatedButton(
              onPressed: () {
                context.go(CreateAccount.routePath);
              },
              child: const Text('Create Account'),
            ),
            const SizedBox(height: 5),
            TextButton(
              onPressed: () {
                context.go(LoginPage.routePath);
              },
              child: Text(
                'Already Have an Account?',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
