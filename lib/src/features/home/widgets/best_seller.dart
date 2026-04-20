import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/src/features/home/page/view_all_products_page.dart';
import 'package:furniture_store_app/src/features/home/provider/home_provider.dart';
import 'package:furniture_store_app/src/features/home/widgets/custom_section_card.dart';
import 'package:go_router/go_router.dart';

class BestSeller extends ConsumerStatefulWidget {
  const BestSeller({super.key, required this.products});

  final List<ProductModel> products;

  @override
  ConsumerState<BestSeller> createState() => _BestSellerState();
}

class _BestSellerState extends ConsumerState<BestSeller> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(homeProvider.notifier).fetchMoreBestsellers();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bestSellerState = ref.watch(homeProvider);
    final isFetchingMore =
        bestSellerState.value?.bestSellers.isFetchingMore ?? false;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text(
                'Best Sellers',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  context.push('${ViewAllProductsPage.routePath}/Best Sellers');
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
          height: 240,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            physics: const BouncingScrollPhysics(),
            controller: _scrollController,
            itemCount: widget.products.length + (isFetchingMore ? 1 : 0),
            itemBuilder: (context, index) {
              if (index == widget.products.length) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CircularProgressIndicator(),
                  ),
                );
              }

              final product = widget.products[index];
              return CustomSectionCard(product: product);
            },
            separatorBuilder: (context, index) => const SizedBox(width: 30),
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
