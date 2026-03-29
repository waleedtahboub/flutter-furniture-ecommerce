import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:furniture_store_app/common/models/review_model/review_model.dart'
    show ReviewModel;

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  factory ProductModel({
    required String imagePath,
    required String name,
    required String category,
    required String rating,
    required double basePrice,
    required double salePrice,
    @Default(false) bool isFavorite,
    @Default('') String description,
    required List<ReviewModel> reviews,
    required List<String> colors,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
