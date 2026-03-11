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
  });
  final String imagePath;
  final String name;
  final String category;
  final String rating;
  final String basePrice;
  final String salePrice;
  final bool isFavorite;
  final String description;

  ProductModel copyWith({
    String? imagePath,
    String? name,
    String? category,
    String? rating,
    String? basePrice,
    String? salePrice,
    bool? isFavorite,
    String? description,
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
    );
  }
}
