// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductModelAdapter extends TypeAdapter<ProductModel> {
  @override
  final typeId = 1;

  @override
  ProductModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductModel(
      id: fields[0] as String,
      imageUrl: fields[1] as String,
      name: fields[2] as String,
      categoryId: fields[3] as String,
      categoryName: fields[4] as String,
      rating: (fields[5] as num).toDouble(),
      basePrice: (fields[6] as num).toDouble(),
      salePrice: (fields[7] as num).toDouble(),
      isBestseller: fields[8] == null ? false : fields[8] as bool,
      isFlashDeal: fields[9] == null ? false : fields[9] as bool,
      is50PercentOff: fields[10] == null ? false : fields[10] as bool,
      isFavorite: fields[11] == null ? false : fields[11] as bool,
      description: fields[12] as String,
      reviews: (fields[13] as List).cast<ReviewModel>(),
      colors: (fields[14] as List).cast<String>(),
      createdAt: fields[15] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, ProductModel obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.imageUrl)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.categoryId)
      ..writeByte(4)
      ..write(obj.categoryName)
      ..writeByte(5)
      ..write(obj.rating)
      ..writeByte(6)
      ..write(obj.basePrice)
      ..writeByte(7)
      ..write(obj.salePrice)
      ..writeByte(8)
      ..write(obj.isBestseller)
      ..writeByte(9)
      ..write(obj.isFlashDeal)
      ..writeByte(10)
      ..write(obj.is50PercentOff)
      ..writeByte(11)
      ..write(obj.isFavorite)
      ..writeByte(12)
      ..write(obj.description)
      ..writeByte(13)
      ..write(obj.reviews)
      ..writeByte(14)
      ..write(obj.colors)
      ..writeByte(15)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
