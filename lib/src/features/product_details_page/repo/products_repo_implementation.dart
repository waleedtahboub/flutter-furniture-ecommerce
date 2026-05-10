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
    var query = _collection.orderBy('createdAt', descending: true).limit(limit);

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

  @override
  Future<PaginatedProducts> fetchBestseller({
    int limit = 10,
    DocumentSnapshot<Object?>? startAfter,
  }) async {
    var query = _collection
        .where('isBestseller', isEqualTo: true)
        .orderBy('createdAt', descending: true)
        .limit(limit);

    if (startAfter != null) {
      query = query.startAfterDocument(startAfter);
    }
    final snapshot = await query.get();

    final bestSellerProducts = snapshot.docs
        .map((doc) => ProductModel.fromJson(doc.data()))
        .toList();

    final lastDoc = snapshot.docs.isNotEmpty ? snapshot.docs.last : null;

    return PaginatedProducts(products: bestSellerProducts, lastDoc: lastDoc);
  }

  @override
  Future<PaginatedProducts> fetchByPercentage({
    int limit = 10,
    DocumentSnapshot<Object?>? startAfter,
  }) async {
    var query = _collection
        .where('is50PercentOff', isEqualTo: true)
        .orderBy('createdAt', descending: true)
        .limit(limit);

    if (startAfter != null) {
      query = query.startAfterDocument(startAfter);
    }

    final snapshot = await query.get();

    final byPercentageProducts = snapshot.docs
        .map((doc) => ProductModel.fromJson(doc.data()))
        .toList();

    final lastDoc = snapshot.docs.isNotEmpty ? snapshot.docs.last : null;
    return PaginatedProducts(products: byPercentageProducts, lastDoc: lastDoc);
  }

  @override
  Future<PaginatedProducts> fetchFlashDeals({
    int limit = 10,
    DocumentSnapshot<Object?>? startAfter,
  }) async {
    var query = _collection
        .where('isFlashDeal', isEqualTo: true)
        .orderBy('createdAt', descending: true)
        .limit(limit);

    if (startAfter != null) {
      query = query.startAfterDocument(startAfter);
    }

    final snapshot = await query.get();

    final flashDealsProducts = snapshot.docs
        .map((doc) => ProductModel.fromJson(doc.data()))
        .toList();

    final lastDoc = snapshot.docs.isNotEmpty ? snapshot.docs.last : null;
    return PaginatedProducts(products: flashDealsProducts, lastDoc: lastDoc);
  }

  @override
  Future<PaginatedProducts> fetchByCategory({
    required String categoryName,
    int limit = 10,
    DocumentSnapshot<Object?>? startAfter,
  }) async {
    var query = _collection
        .where('categoryName', isEqualTo: categoryName)
        .orderBy('createdAt', descending: true)
        .limit(limit);

    if (startAfter != null) {
      query = query.startAfterDocument(startAfter);
    }

    final snapshot = await query.get();

    final flashDealsProducts = snapshot.docs
        .map((doc) => ProductModel.fromJson(doc.data()))
        .toList();

    final lastDoc = snapshot.docs.isNotEmpty ? snapshot.docs.last : null;
    return PaginatedProducts(products: flashDealsProducts, lastDoc: lastDoc);
  }

  @override
  Future<ProductModel?> fetchProductById(String id) async {
    final doc = await _collection.doc(id).get();
    if (doc.exists && doc.data() != null) {
      return ProductModel.fromJson(doc.data()!);
    }
    return null;
  }
}

@Riverpod(keepAlive: true)
ProductsRepo productsRepo(Ref ref) {
  return ProductsRepoImplementation();
}
