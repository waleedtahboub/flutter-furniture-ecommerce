import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/src/features/home/provider/home_provider.dart';
import 'package:furniture_store_app/src/features/home/widgets/all_products.dart';
import 'package:furniture_store_app/src/features/home/widgets/best_seller.dart';
import 'package:furniture_store_app/src/features/home/widgets/categories.dart';
import 'package:furniture_store_app/src/features/home/widgets/discounts_by_percentage.dart';
import 'package:furniture_store_app/src/features/home/widgets/flash_deals.dart';
import 'package:furniture_store_app/src/features/home/widgets/page_view_head_section.dart';
import 'package:furniture_store_app/src/features/home/widgets/search_bar.dart';
import 'package:furniture_store_app/src/features/onboarding/pages/on_boarding_page_view.dart';
import 'package:go_router/go_router.dart';

abstract class ProductCallback {
  void onFavoriteToggled(ProductModel product);
}

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});
  static const String routePath = '/';

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    implements ProductCallback {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        ref.read(homeProvider.notifier).fetchMoreProducts();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose(); // Kill the controller to save memory
    super.dispose();
  }

  @override
  //todo move this to the provider so you finish the logic
  void onFavoriteToggled(ProductModel product) {
    setState(() {
      // final index = products.indexOf(product);
      // products[index] = product.copyWith(isFavorite: !product.isFavorite);
    });
  }

  @override
  Widget build(BuildContext context) {
    final homeState = ref.watch(homeProvider);

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Theme.of(context).colorScheme.surface,
        titleSpacing: 10,
        title: InkWell(
          onTap: () {
            context.go(OnBoardingPageView.routePath);
          },
          child: Row(
            children: [
              const Icon(Icons.location_on_sharp),

              Text(
                '  Select location',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: AppColor.onSurface,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            color: Theme.of(context).colorScheme.outline,
            icon: const Icon(Icons.notifications_none_outlined),
          ),
        ],
        centerTitle: false,
      ),
      backgroundColor: Colors.white,
      body: homeState.when(
        data: (data) {
          final bestSeller = data.bestSellers;
          final flashDeals = data.flashDeals;
          final isFiftyOFF = data.fiftyPercentOff;
          final categories = data.categories;
          return RefreshIndicator(
            onRefresh: () async {
              return ref.refresh(homeProvider.future);
            },
            child: SingleChildScrollView(
              controller: _scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  const CustomSearchBar(),
                  const SizedBox(height: 25),
                  const PageViewHeadSection(),
                  Categories(categories: categories),
                  BestSeller(products: bestSeller),
                  FlashDeals(products: flashDeals),

                  DiscountsByPercentage(products: isFiftyOFF),
                  const SizedBox(height: 16),
                  Text(
                    'Products',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),

                  const SizedBox(height: 16),
                  AllProducts(
                    products: data.products,

                    isFetchingMore: data.isFetchingMore,
                  ),
                ],
              ),
            ),
          );
        },
        error: (error, stackTrace) {
          return Text('[Firebase error:$error]');
        },
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
