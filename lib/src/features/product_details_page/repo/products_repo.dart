import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';

export 'products_repo_implementation.dart' show productsRepoProvider;

class PaginatedProducts {
  PaginatedProducts({required this.products, this.lastDoc});
  final List<ProductModel> products;
  final DocumentSnapshot? lastDoc;
}

abstract class ProductsRepo {
  Future<void> addProducts();

  Future<PaginatedProducts> fetchProducts({
    int limit = 10,
    DocumentSnapshot? startAfter,
  });
  Future<PaginatedProducts> fetchBestseller({
    int limit = 10,
    DocumentSnapshot? startAfter,
  });

  Future<PaginatedProducts> fetchByPercentage({
    int limit = 10,
    DocumentSnapshot? startAfter,
  });

  Future<PaginatedProducts> fetchFlashDeals({
    int limit = 10,
    DocumentSnapshot? startAfter,
  });

  Future<PaginatedProducts> fetchByCategory({
    required String categoryName,
    int limit = 10,
    DocumentSnapshot? startAfter,
  });
}
