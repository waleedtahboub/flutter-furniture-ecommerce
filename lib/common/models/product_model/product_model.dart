import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:furniture_store_app/common/models/review_model/review_model.dart'
    show ReviewModel;

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  @JsonSerializable(explicitToJson: true)
  factory ProductModel({
    required String id,
    required String imageUrl,
    required String name,
    required String categoryId,
    required String categoryName,
    required double rating,
    required double basePrice,
    required double salePrice,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool isFavorite,

    required String description,
    required List<ReviewModel> reviews,
    required List<String> colors,
    required DateTime createdAt,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
