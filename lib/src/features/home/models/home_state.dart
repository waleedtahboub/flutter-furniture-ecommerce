import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:furniture_store_app/common/models/banner_model/banner_model.dart';
import 'package:furniture_store_app/common/models/category_model/category_model.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';

part 'home_state.freezed.dart';

@freezed
abstract class PaginatedSection<T> with _$PaginatedSection<T> {
  const PaginatedSection._();
  const factory PaginatedSection({
    @Default([]) List<T> items,
    @Default(false) bool isFetchingMore,
    @Default(true) bool hasMore,
    DocumentSnapshot? lastDoc,
  }) = _PaginatedSection;
}
@freezed
abstract class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState({
    @Default([]) List<BannerModel> banners,
    @Default([]) List<CategoryModel> categories,
    // Using the generic section model for all product lists
    @Default(PaginatedSection<ProductModel>()) PaginatedSection<ProductModel> allProducts,
    @Default(PaginatedSection<ProductModel>()) PaginatedSection<ProductModel> bestSellers,
    @Default(PaginatedSection<ProductModel>()) PaginatedSection<ProductModel> flashDeals,
    @Default(PaginatedSection<ProductModel>()) PaginatedSection<ProductModel> fiftyPercentOff,
    @Default(PaginatedSection<ProductModel>()) PaginatedSection<ProductModel> categoryProducts,
    String? errorMessage,
  }) = _HomeState;
}
