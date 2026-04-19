import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/src/features/home/provider/home_provider.dart';
import 'package:furniture_store_app/src/features/home/widgets/custom_all_products.dart';
import 'package:go_router/go_router.dart';

class ViewAllProductsPage extends ConsumerStatefulWidget {
  const ViewAllProductsPage({
    super.key,
    required this.title,

  });

  final String title;
 

  static const String routePath = '/view-all';

  @override
  ConsumerState<ViewAllProductsPage> createState() =>
      _ViewAllProductsPageState();
}

class _ViewAllProductsPageState extends ConsumerState<ViewAllProductsPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    // Check if user is near the bottom of the vertical list
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      final notifier = ref.read(homeProvider.notifier);

      // Dynamic loading based on the page title
      if (widget.title == 'Best Sellers') {
        notifier.fetchMoreBestsellers();
      } else if (widget.title == 'Flash Deals') {
        notifier.fetchMoreFlashDeals();
      } else if (widget.title == '50% off') {
        notifier.fetchMoreFiftyPercentOff();
      } else {
        notifier.fetchMoreByCategory(widget.title);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final homeState = ref.watch(homeProvider);

    List<ProductModel> currentProducts = [];
    bool isFetchingMore = false;

    // Dynamically watch the correct list and loading flag from the provider
    homeState.whenData((data) {
      if (widget.title == 'Best Sellers') {
        currentProducts = data.bestSellers.items;
        isFetchingMore = data.bestSellers.isFetchingMore;
      } else if (widget.title == 'Flash Deals') {
        currentProducts = data.flashDeals.items;
        isFetchingMore = data.flashDeals.isFetchingMore;
      } else if (widget.title == '50% off') {
        currentProducts = data.fiftyPercentOff.items;
        isFetchingMore = data.fiftyPercentOff.isFetchingMore;
      } else {
        currentProducts = data.categoryProducts.items;
        isFetchingMore = data.categoryProducts.isFetchingMore;
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
        ),
      ),
      body: homeState.isLoading && currentProducts.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : currentProducts.isEmpty
          ? const Center(child: Text('No products found.'))
          : ListView.separated(
              controller: _scrollController,
              padding: const EdgeInsets.all(16),
              itemCount: currentProducts.length + (isFetchingMore ? 1 : 0),
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) {
                // Return spinner at the very bottom
                if (index == currentProducts.length) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: CircularProgressIndicator(),
                    ),
                  );
                }

                final product = currentProducts[index];
                return CustomAllProducts(product: product);
              },
            ),
    );
  }
}
