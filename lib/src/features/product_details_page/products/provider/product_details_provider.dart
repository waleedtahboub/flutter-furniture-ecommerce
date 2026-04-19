import 'package:furniture_store_app/src/features/product_details_page/repo/products_repo_implementation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:furniture_store_app/common/models/product_model/product_model.dart';

part 'product_details_provider.g.dart';

@riverpod
class ProductDetail extends _$ProductDetail {
  @override
  FutureOr<ProductModel?> build(String productId) {
   return ref.watch(productsRepoProvider).fetchProductById(productId);
  }
}
