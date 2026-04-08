import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:furniture_store_app/src/features/home/models/products.dart';
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
}

@Riverpod(keepAlive: true)
ProductsRepo productsRepo(Ref ref) {
  return ProductsRepoImplementation();
}
