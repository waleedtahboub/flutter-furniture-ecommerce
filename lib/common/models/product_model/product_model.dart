class ProductModel {
  const ProductModel({
    required this.imagePath,
    required this.productName,
    required this.productCategory,
    required this.productRating,
    required this.productPrice,
    this.isFavorite = false,
    this.description = '',
  });
  final String imagePath;
  final String productName;
  final String productCategory;
  final String productRating;
  final String productPrice;
  final bool isFavorite;
  final String description;
}
