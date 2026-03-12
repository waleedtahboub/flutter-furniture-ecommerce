import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/src/features/onboarding/pages/get_started.dart';
import 'package:go_router/go_router.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 120),
            Container(
              width: 240,
              height: 260.08,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.4),
              ),
              child: Image.asset(
                'assets/images/on_boarding/page3.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              child: Text(
                'Make Every Surface Count',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Dress up your shelves, coffee tables, and\n corners with our curated collection. ',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColor.onSurface,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),

            ElevatedButton(
              onPressed: () {
                context.go(GetStarted.routePath);
              },
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
