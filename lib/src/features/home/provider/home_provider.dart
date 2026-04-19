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
      allProducts: PaginatedSection(
        items: allProductsRes.products,
        lastDoc: allProductsRes.lastDoc,
        hasMore: allProductsRes.lastDoc != null,
      ),
      bestSellers: PaginatedSection(
        items: bestRes.products,
        lastDoc: bestRes.lastDoc,
        hasMore: bestRes.lastDoc != null,
      ),
      fiftyPercentOff: PaginatedSection(
        items: fiftyRes.products,
        lastDoc: fiftyRes.lastDoc,
        hasMore: fiftyRes.lastDoc != null,
      ),
      flashDeals: PaginatedSection(
        items: flashDealsRes.products,
        lastDoc: flashDealsRes.lastDoc,
        hasMore: flashDealsRes.lastDoc != null,
      ),
    );
  }

  Future<void> fetchMoreProducts() async {
    final currentState = state.value;

    if (currentState == null ||
        currentState.allProducts.isFetchingMore ||
        !currentState.allProducts.hasMore) {
      return;
    }
    state = AsyncData(currentState.copyWith(
      allProducts: currentState.allProducts.copyWith(isFetchingMore: true),
    ));
    try {
      final paginated = await ref.read(productsRepoProvider).fetchProducts(
            limit: 10,
            startAfter: currentState.allProducts.lastDoc,
          );

      state = AsyncData(
        currentState.copyWith(
          allProducts: currentState.allProducts.copyWith(
            items: [...currentState.allProducts.items, ...paginated.products],
            isFetchingMore: false,
            lastDoc: paginated.lastDoc,
            hasMore: paginated.lastDoc != null,
          ),
        ),
      );
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
  Future<void> fetchMoreBestsellers() async {
    final currentState = state.value;

    if (currentState == null ||
        currentState.bestSellers.isFetchingMore ||
        !currentState.bestSellers.hasMore) {
      return;
    }
    state = AsyncData(currentState.copyWith(
      bestSellers: currentState.bestSellers.copyWith(isFetchingMore: true),
    ));
    try {
      final paginated = await ref.read(productsRepoProvider).fetchBestseller(
            limit: 10,
            startAfter: currentState.bestSellers.lastDoc,
          );

      state = AsyncData(
        currentState.copyWith(
          bestSellers: currentState.bestSellers.copyWith(
            items: [...currentState.bestSellers.items, ...paginated.products],
            isFetchingMore: false,
            lastDoc: paginated.lastDoc,
            hasMore: paginated.lastDoc != null,
          ),
        ),
      );
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> fetchMoreFlashDeals() async {
    final currentState = state.value;

    if (currentState == null ||
        currentState.flashDeals.isFetchingMore ||
        !currentState.flashDeals.hasMore) {
      return;
    }
    state = AsyncData(currentState.copyWith(
      flashDeals: currentState.flashDeals.copyWith(isFetchingMore: true),
    ));
    try {
      final paginated = await ref.read(productsRepoProvider).fetchFlashDeals(
            limit: 10,
            startAfter: currentState.flashDeals.lastDoc,
          );

      state = AsyncData(
        currentState.copyWith(
          flashDeals: currentState.flashDeals.copyWith(
            items: [...currentState.flashDeals.items, ...paginated.products],
            isFetchingMore: false,
            lastDoc: paginated.lastDoc,
            hasMore: paginated.lastDoc != null,
          ),
        ),
      );
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> fetchMoreFiftyPercentOff() async {
    final currentState = state.value;

    if (currentState == null ||
        currentState.fiftyPercentOff.isFetchingMore ||
        !currentState.fiftyPercentOff.hasMore) {
      return;
    }
    state = AsyncData(currentState.copyWith(
      fiftyPercentOff: currentState.fiftyPercentOff.copyWith(isFetchingMore: true),
    ));
    try {
      final paginated = await ref.read(productsRepoProvider).fetchByPercentage(
            limit: 10,
            startAfter: currentState.fiftyPercentOff.lastDoc,
          );

      state = AsyncData(
        currentState.copyWith(
          fiftyPercentOff: currentState.fiftyPercentOff.copyWith(
            items: [...currentState.fiftyPercentOff.items, ...paginated.products],
            isFetchingMore: false,
            lastDoc: paginated.lastDoc,
            hasMore: paginated.lastDoc != null,
          ),
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
        categoryProducts: PaginatedSection(
          items: result.products,
          lastDoc: result.lastDoc,
          hasMore: result.lastDoc != null,
        ),
      ));
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> fetchMoreByCategory(String categoryName) async {
    final currentState = state.value;
    if (currentState == null ||
        currentState.categoryProducts.isFetchingMore ||
        !currentState.categoryProducts.hasMore) {
      return;
    }

    state = AsyncData(currentState.copyWith(
      categoryProducts: currentState.categoryProducts.copyWith(isFetchingMore: true),
    ));

    try {
      final result = await ref.read(productsRepoProvider).fetchByCategory(
            categoryName: categoryName,
            startAfter: currentState.categoryProducts.lastDoc,
          );

      state = AsyncData(currentState.copyWith(
        categoryProducts: currentState.categoryProducts.copyWith(
          items: [...currentState.categoryProducts.items, ...result.products],
          lastDoc: result.lastDoc,
          hasMore: result.lastDoc != null,
          isFetchingMore: false,
        ),
      ));
    } catch (e) {
      state = AsyncData(state.value!.copyWith(
        categoryProducts: currentState.categoryProducts.copyWith(isFetchingMore: false),
      ));
    }
  }
}


