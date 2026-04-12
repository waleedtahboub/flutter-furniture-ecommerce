import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:furniture_store_app/src/features/product_details_page/repo/products_repo.dart';

part 'products_repo_implementation.g.dart';

class ProductsRepoImplementation implements ProductsRepo {
  final _collection = FirebaseFirestore.instance.collection('products');
  @override
  Future<void> addProducts() async {
    final categorySnapshot = await FirebaseFirestore.instance
        .collection('categories')
        .get();
    final categoryMap = {
      for (final doc in categorySnapshot.docs)
        doc.data()['title'] as String: doc.id,
    };
    final List<ProductModel> products = [];
    for (final product in products) {
      final docRef = _collection.doc();
      final updatedProduct = product
          .copyWith(
            id: docRef.id,
            categoryId: categoryMap[product.categoryName] ?? '',
          )
          .toJson();

      await docRef.set(updatedProduct);
    }
  }

  @override
  Future<PaginatedProducts> fetchProducts({
    int limit = 10,
    DocumentSnapshot? startAfter,
  }) async {
    var query = _collection.orderBy('name').limit(limit);

    if (startAfter != null) {
      query = query.startAfterDocument(startAfter);
    }

    final snapshot = await query.get();

    final products = snapshot.docs
        .map((doc) => ProductModel.fromJson(doc.data()))
        .toList();

    final lastDoc = snapshot.docs.isNotEmpty ? snapshot.docs.last : null;

    return PaginatedProducts(products: products, lastDoc: lastDoc);
  }
}

@Riverpod(keepAlive: true)
ProductsRepo productsRepo(Ref ref) {
  return ProductsRepoImplementation();
}
