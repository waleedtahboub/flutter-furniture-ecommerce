// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModel _$ProductModelFromJson(Map<String, dynamic> json) =>
    _ProductModel(
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String,
      name: json['name'] as String,
      categoryId: json['categoryId'] as String,
      categoryName: json['categoryName'] as String,
      rating: (json['rating'] as num).toDouble(),
      basePrice: (json['basePrice'] as num).toDouble(),
      salePrice: (json['salePrice'] as num).toDouble(),
      isBestseller: json['isBestseller'] as bool? ?? false,
      isFlashDeal: json['isFlashDeal'] as bool? ?? false,
      is50PercentOff: json['is50PercentOff'] as bool? ?? false,
      description: json['description'] as String,
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      colors: (json['colors'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'rating': instance.rating,
      'basePrice': instance.basePrice,
      'salePrice': instance.salePrice,
      'isBestseller': instance.isBestseller,
      'isFlashDeal': instance.isFlashDeal,
      'is50PercentOff': instance.is50PercentOff,
      'description': instance.description,
      'reviews': instance.reviews.map((e) => e.toJson()).toList(),
      'colors': instance.colors,
      'createdAt': instance.createdAt.toIso8601String(),
    };
