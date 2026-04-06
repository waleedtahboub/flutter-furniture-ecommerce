import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_store_app/common/resources/app_breakpoints.dart';
import 'package:furniture_store_app/src/features/category/provider/category_provider.dart';
import 'package:furniture_store_app/src/features/category/widgets/categories_cards.dart';

class CategoryPage extends ConsumerWidget {
  const CategoryPage({super.key});
  static const String routePath = '/category';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesState = ref.watch(categoriesProvider);
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        leading: width < AppBreakpoints.desktop
            ? IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_new),
              )
            : null,
        actions: [
          IconButton(
            onPressed: () {},
            color: Theme.of(context).colorScheme.outline,
            icon: const Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      body: categoriesState.when(
        data: (data) {
          return LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount;
              if (width >= AppBreakpoints.desktop) {
                crossAxisCount = 4;
              } else if (width >= AppBreakpoints.tablet) {
                crossAxisCount = 3;
              } else {
                crossAxisCount = 2;
              }

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  itemCount: data.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    final category = data[index];
                    return CategoriesCards(
                      title: category.title,
                      titleFontSize: AppBreakpoints.titleFontSize(width),
                      imagePath: category.imageUrl,
                    );
                  },
                ),
              );
            },
          );
        },
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },

        error: (error, stackTrace) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Failed to load categories'),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => ref.invalidate(categoriesProvider),
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
