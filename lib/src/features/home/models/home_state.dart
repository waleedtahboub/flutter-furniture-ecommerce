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

    @Default([]) List<ProductModel> products,
    @Default(false) bool isLoading,
    @Default(true) bool hasMore, 
    @Default(false) bool isFetchingMore,
    String? errorMessage,
  }) = _HomeState;

  List<ProductModel> get bestSeller =>
      products.where((element) => element.isBestseller).toList();
  List<ProductModel> get flashDeals =>
      products.where((element) => element.isFlashDeal).toList();
  List<ProductModel> get isFiftyOFF =>
      products.where((element) => element.is50PercentOff).toList();
}
