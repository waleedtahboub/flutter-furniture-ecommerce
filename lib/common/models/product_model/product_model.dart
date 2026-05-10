import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:furniture_store_app/common/models/review_model/review_model.dart'
    show ReviewModel;
import 'package:hive_ce/hive.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
@HiveType(typeId: 1)
abstract class ProductModel with _$ProductModel {
  @JsonSerializable(explicitToJson: true)
  factory ProductModel({
    @HiveField(0)
    required String id,
    @HiveField(1)
    required String imageUrl,
    @HiveField(2)
    required String name,
    @HiveField(3)
    required String categoryId,
    @HiveField(4)
    required String categoryName,
    @HiveField(5)
    required double rating,
    @HiveField(6)
    required double basePrice,
    @HiveField(7)
    required double salePrice,
    @HiveField(8)
    @Default(false) bool isBestseller,
    @HiveField(9)
    @Default(false) bool isFlashDeal,
    @HiveField(10)
    @Default(false) bool is50PercentOff,


    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    @HiveField(11)
    bool isFavorite,
@HiveField(12) 
    required String description,
    @HiveField(13)
    required List<ReviewModel> reviews,
    @HiveField(14)
    required List<String> colors,
    @HiveField(15)
    required DateTime createdAt,
  
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
