import 'dart:async';
import 'package:furniture_store_app/src/features/category/repo/category_repo.dart';
import 'package:furniture_store_app/src/features/product_details_page/repo/products_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:furniture_store_app/src/features/home/models/home_state.dart';
import 'package:furniture_store_app/src/features/home/repo/banner_repo/banner_repo_implementation.dart';

part 'home_provider.g.dart';

@Riverpod(keepAlive: true)
class HomeNotifier extends _$HomeNotifier {
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
    final banners = await ref.read(bannerRepoProvider).fetchAllBanners();
    final categories = await ref.read(categoryRepoProvider).fetchAllCategories();

    final [
      allProductsRes,
      bestRes,
      fiftyRes,
      flashDealsRes,
    ] = await Future.wait([
      ref.read(productsRepoProvider).fetchProducts(limit: 10),
      ref.read(productsRepoProvider).fetchBestseller(limit: 10),
      ref.read(productsRepoProvider).fetchByPercentage(limit: 10),
      ref.read(productsRepoProvider).fetchFlashDeals(limit: 10),
    ]);

    return HomeState(
      banners: banners,
      categories: categories,
      isLoading: false,

      products: allProductsRes.products,
      lastDocAll: allProductsRes.lastDoc,
      hasMore: allProductsRes.lastDoc != null,


      bestSellers: bestRes.products,
      lastDocBestSellers: bestRes.lastDoc,
      hasMoreBestSellers: bestRes.lastDoc != null,


      fiftyPercentOff: fiftyRes.products,
      lastDocFiftyPercentOff: fiftyRes.lastDoc,
      hasMoreFiftyPercentOff: fiftyRes.lastDoc != null,

  
      flashDeals: flashDealsRes.products,
      lastDocFlashDeals: flashDealsRes.lastDoc,
      hasMoreFlashDeals: flashDealsRes.lastDoc != null,
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
      final paginated = await ref.read(productsRepoProvider).fetchProducts(
            limit: 10,
            startAfter: currentState.lastDocAll,
          );

      state = AsyncData(
        currentState.copyWith(
          products: [...currentState.products, ...paginated.products],
          isFetchingMore: false,
          lastDocAll: paginated.lastDoc,
          hasMore: paginated.lastDoc != null,
        ),
      );
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
  Future<void> fetchMoreBestsellers() async {
    final currentState = state.value;

    if (currentState == null ||
        currentState.isFetchingMoreBestSellers ||
        !currentState.hasMoreBestSellers) {
      return;
    }
    state = AsyncData(currentState.copyWith(isFetchingMoreBestSellers: true));
    try {
      final paginated = await ref.read(productsRepoProvider).fetchBestseller(
            limit: 10,
            startAfter: currentState.lastDocBestSellers,
          );

      state = AsyncData(
        currentState.copyWith(
          bestSellers: [...currentState.bestSellers, ...paginated.products],
          isFetchingMoreBestSellers: false,
          lastDocBestSellers: paginated.lastDoc,
          hasMoreBestSellers: paginated.lastDoc != null,
        ),
      );
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> fetchMoreFlashDeals() async {
    final currentState = state.value;

    if (currentState == null ||
        currentState.isFetchingMoreFlashDeals ||
        !currentState.hasMoreFlashDeals) {
      return;
    }
    state = AsyncData(currentState.copyWith(isFetchingMoreFlashDeals: true));
    try {
      final paginated = await ref.read(productsRepoProvider).fetchFlashDeals(
            limit: 10,
            startAfter: currentState.lastDocFlashDeals,
          );

      state = AsyncData(
        currentState.copyWith(
          flashDeals: [...currentState.flashDeals, ...paginated.products],
          isFetchingMoreFlashDeals: false,
          lastDocFlashDeals: paginated.lastDoc,
          hasMoreFlashDeals: paginated.lastDoc != null,
        ),
      );
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> fetchMoreFiftyPercentOff() async {
    final currentState = state.value;

    if (currentState == null ||
        currentState.isFetchingMoreFiftyPercentOff ||
        !currentState.hasMoreFiftyPercentOff) {
      return;
    }
    state = AsyncData(currentState.copyWith(isFetchingMoreFiftyPercentOff: true));
    try {
      final paginated = await ref.read(productsRepoProvider).fetchByPercentage(
            limit: 10,
            startAfter: currentState.lastDocFiftyPercentOff,
          );

      state = AsyncData(
        currentState.copyWith(
          fiftyPercentOff: [...currentState.fiftyPercentOff, ...paginated.products],
          isFetchingMoreFiftyPercentOff: false,
          lastDocFiftyPercentOff: paginated.lastDoc,
          hasMoreFiftyPercentOff: paginated.lastDoc != null,
        ),
      );
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> fetchByCategory(String categoryName) async {
    state = const AsyncLoading();
    try {
      final result = await ref.read(productsRepoProvider).fetchByCategory(
            categoryName: categoryName,
          );

      state = AsyncData(state.value!.copyWith(
        categoryProducts: result.products,
        lastDocCategory: result.lastDoc,
        hasMoreCategory: result.lastDoc != null,
      ));
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> fetchMoreByCategory(String categoryName) async {
    final currentState = state.value;
    if (currentState == null ||
        currentState.isFetchingMoreCategory ||
        !currentState.hasMoreCategory) {
      return;
    }

    state = AsyncData(currentState.copyWith(isFetchingMoreCategory: true));

    try {
      final result = await ref.read(productsRepoProvider).fetchByCategory(
            categoryName: categoryName,
            startAfter: currentState.lastDocCategory,
          );

      state = AsyncData(currentState.copyWith(
        categoryProducts: [...currentState.categoryProducts, ...result.products],
        lastDocCategory: result.lastDoc,
        hasMoreCategory: result.lastDoc != null,
        isFetchingMoreCategory: false,
      ));
    } catch (e) {
      state = AsyncData(state.value!.copyWith(isFetchingMoreCategory: false));
    }
  }
}


