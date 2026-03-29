// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModel _$ProductModelFromJson(Map<String, dynamic> json) =>
    _ProductModel(
      imagePath: json['imagePath'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      rating: json['rating'] as String,
      basePrice: (json['basePrice'] as num).toDouble(),
      salePrice: (json['salePrice'] as num).toDouble(),
      isFavorite: json['isFavorite'] as bool? ?? false,
      description: json['description'] as String? ?? '',
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      colors: (json['colors'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'name': instance.name,
      'category': instance.category,
      'rating': instance.rating,
      'basePrice': instance.basePrice,
      'salePrice': instance.salePrice,
      'isFavorite': instance.isFavorite,
      'description': instance.description,
      'reviews': instance.reviews,
      'colors': instance.colors,
    };
