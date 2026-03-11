import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/src/features/home/models/products.dart';
import 'package:furniture_store_app/src/features/home/widgets/custom_section_card.dart';
import 'package:furniture_store_app/src/features/home/page/home_page.dart';

class DiscountsByPercentage extends StatelessWidget {
  const DiscountsByPercentage({super.key, required this.favoriteCallback});

  final ProductCallback favoriteCallback;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text('50% off', style: Theme.of(context).textTheme.titleMedium),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View all',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    decoration: TextDecoration.underline,
                    color: AppColor.primary,
                    decorationColor: AppColor.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 240,
          child: ListView.separated(
            padding: const EdgeInsets.only(left: 20.0),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return CustomSectionCard(
                product: product,
                favoriteCallback: favoriteCallback,
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 30),
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
