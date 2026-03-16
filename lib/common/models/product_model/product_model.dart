import 'package:furniture_store_app/common/models/review_model/review_model.dart';

class ProductModel {
  ProductModel({
    required this.imagePath,
    required this.name,
    required this.category,
    required this.rating,
    required this.basePrice,
    required this.salePrice,
    this.isFavorite = false,
    this.description = '',
    required this.reviews,
    required this.colors,
  });
  final String imagePath;
  final String name;
  final String category;
  final String rating;
  final String basePrice;
  final String salePrice;
  final bool isFavorite;
  final String description;
  final List<ReviewModel> reviews;
  final List<String> colors;

  ProductModel copyWith({
    String? imagePath,
    String? name,
    String? category,
    String? rating,
    String? basePrice,
    String? salePrice,
    bool? isFavorite,
    String? description,
    List<ReviewModel>? reviews,
    List<String>? colors,
  }) {
    return ProductModel(
      imagePath: imagePath ?? this.imagePath,
      name: name ?? this.name,
      category: category ?? this.category,
      rating: rating ?? this.rating,
      basePrice: basePrice ?? this.basePrice,
      salePrice: salePrice ?? this.salePrice,
      isFavorite: isFavorite ?? this.isFavorite,
      description: description ?? this.description,
      reviews: reviews ?? this.reviews,
      colors: colors ?? this.colors,
    );
  }
}
