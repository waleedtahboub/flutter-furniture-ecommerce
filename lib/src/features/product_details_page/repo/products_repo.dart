import 'package:furniture_store_app/common/models/product_model/product_model.dart';

export 'products_repo_implementation.dart' show productsRepoProvider;

abstract class ProductsRepo {
  Future<void> addProducts();

  Future <List<ProductModel>> fetchProducts();
}
