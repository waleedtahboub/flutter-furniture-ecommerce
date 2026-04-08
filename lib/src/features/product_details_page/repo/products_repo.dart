export 'products_repo_implementation.dart' show productsRepoProvider;

abstract class ProductsRepo {
  Future<void> addProducts();
}
