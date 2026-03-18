import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/common/resources/constants.dart';
import 'package:intl/intl.dart';

class RatingSection extends StatelessWidget {
  const RatingSection({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Reviews (${product.reviews.length})',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontSize: 19),
            ),
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

        ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final review = product.reviews[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColor.dragHandleColor,
                        child: Text(
                          review.reviewerName[0],
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  review.reviewerName,
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                                Text(
                                  DateFormat(Constants.dayAndMonth).format(review.date),
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                              ],
                            ),
                            Row(
                              children: List.generate(5, (index) {
                                return Icon(
                                  Icons.star,
                                  color: index < review.rating
                                      ? AppColor.star
                                      : AppColor.onSecondary,
                                  size: 16,
                                );
                              }),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              review.comment,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
