import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/src/features/category/models/category_type.dart';
import 'package:furniture_store_app/src/features/category/page/category_page.dart';
import 'package:go_router/go_router.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text(
                'Categories ',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  context.go(CategoryPage.routePath);
                },
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
          height: 91,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              final category = CategoryType.values[index];
              return InkWell(
                onTap: () {},
                child: SizedBox(
                  width: 69,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 58,
                        width: 58,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(category.imageUrl),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        category.title,
                        style: Theme.of(context).textTheme.titleSmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 30),
          ),
        ),
      ],
    );
  }
}
