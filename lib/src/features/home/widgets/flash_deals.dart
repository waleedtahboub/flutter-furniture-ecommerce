import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/common/app/router/app_router.dart';
import 'package:furniture_store_app/src/features/home/page/view_all_products_page.dart';
import 'package:furniture_store_app/src/features/home/provider/home_provider.dart';
import 'package:furniture_store_app/src/features/home/widgets/custom_section_card.dart';
import 'package:go_router/go_router.dart';

class FlashDeals extends ConsumerStatefulWidget {
  const FlashDeals({super.key, required this.products});
  final List<ProductModel> products;

  @override
  ConsumerState<FlashDeals> createState() => _FlashDealsState();
}

class _FlashDealsState extends ConsumerState<FlashDeals> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(homeProvider.notifier).fetchMoreFlashDeals();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final flashDealsState = ref.watch(homeProvider);
    final isFetchingMore =
        flashDealsState.value?.isFetchingMoreFlashDeals ?? false;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text(
                'Flash deals',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  context.push('/view-all/Flash Deals');
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
            controller: _scrollController,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
