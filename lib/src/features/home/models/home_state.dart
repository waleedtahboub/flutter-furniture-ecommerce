import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:furniture_store_app/common/models/banner_model/banner_model.dart';
import 'package:furniture_store_app/common/models/category_model/category_model.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState({
    @Default([]) List<BannerModel> banners,
    @Default([]) List<CategoryModel> categories,
    @Default([]) List<ProductModel> bestSellers,
    @Default([]) List<ProductModel> flashDeals,
    @Default([]) List<ProductModel> fiftyPercentOff,
    @Default([]) List<ProductModel> products,
    @Default(false) bool isLoading,

    @Default(true) bool hasMore,
    @Default(true) bool hasMoreBestSellers,
    @Default(true) bool hasMoreFlashDeals,
    @Default(true) bool hasMoreFiftyPercentOff,

    @Default(false) bool isFetchingMore,
    @Default(false) bool isFetchingMoreBestSellers,
    @Default(false) bool isFetchingMoreFlashDeals,
    @Default(false) bool isFetchingMoreFiftyPercentOff,
    String? errorMessage,
    DocumentSnapshot? lastDocAll,
    DocumentSnapshot? lastDocBestSellers,
    DocumentSnapshot? lastDocFlashDeals,
    DocumentSnapshot? lastDocFiftyPercentOff,
  }) = _HomeState;
}
