import 'package:flutter/material.dart';
import 'package:furniture_store_app/src/features/category/models/category_type.dart';
import 'package:furniture_store_app/src/features/category/widgets/categories_cards.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});
  static const String routePath = '/category';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            color: Theme.of(context).colorScheme.outline,
            icon: const Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: CategoryType.values.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final category = CategoryType.values[index];
            return CategoriesCards(
              title: category.title,
              imagePath: category.imagePath,
            );
          },
        ),
      ),
    );
  }
}
