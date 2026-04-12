import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:furniture_store_app/src/features/category/repo/category_repo.dart';
import 'package:furniture_store_app/src/features/product_details_page/repo/products_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:furniture_store_app/src/features/home/models/home_state.dart';
import 'package:furniture_store_app/src/features/home/repo/banner_repo/banner_repo_implementation.dart';

part 'home_provider.g.dart';

@Riverpod(keepAlive: true)
class HomeNotifier extends _$HomeNotifier {
  DocumentSnapshot? _lastDocument;
  @override
  FutureOr<HomeState> build() async {
    return fetchHomeData();
  }

  Future<void> addBanner() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(bannerRepoProvider).addBanner();
      return fetchHomeData();
    });
  }

  Future<HomeState> fetchHomeData() async {
    _lastDocument = null;
    final banners = await ref.read(bannerRepoProvider).fetchAllBanners();
    final categories = await ref
        .read(categoryRepoProvider)
        .fetchAllCategories();
    final paginated = await ref
        .read(productsRepoProvider)
        .fetchProducts(limit: 10);
    _lastDocument = paginated.lastDoc;

    return HomeState(
      banners: banners,
      isLoading: false,
      products: paginated.products,
      hasMore: paginated.lastDoc != null,
      categories: categories,
    );
  }

  Future<void> fetchMoreProducts() async {
    final currentState = state.value;
 
    if (currentState == null ||
        currentState.isFetchingMore ||
        !currentState.hasMore) {
      return;
    }
    state = AsyncData(currentState.copyWith(isFetchingMore: true));
    try {
      final paginated = await ref
          .read(productsRepoProvider)
          .fetchProducts(limit: 10, startAfter: _lastDocument);

      _lastDocument = paginated.lastDoc;

      state = AsyncData(
        currentState.copyWith(
          products: [...currentState.products, ...paginated.products],
          isFetchingMore: false,
          hasMore: paginated.lastDoc != null,
        ),
      );
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
