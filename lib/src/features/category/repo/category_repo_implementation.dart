import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:furniture_store_app/common/models/category_model/category_model.dart';
import 'package:furniture_store_app/src/features/category/models/category_type.dart';
import 'package:furniture_store_app/src/features/category/repo/category_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_repo_implementation.g.dart';

class CategoryRepoImplementation implements CategoryRepo {
  CategoryRepoImplementation();

  final _collection = FirebaseFirestore.instance.collection('categories');
  @override
  Future<void> addCategories() async {
    for (final type in CategoryType.values) {
      final docRef = _collection.doc();
      final category = CategoryModel(
        id: docRef.id,
        title: type.title,
        imageUrl: type.imageUrl,
      ).toJson();
      await docRef.set(category); 
    }
  }

  @override
  Future<List<CategoryModel>> fetchAllCategories() {
    // TODO: implement fetchAllCategories
    throw UnimplementedError();
  }
}

@Riverpod(keepAlive: true)
CategoryRepo categoryRepo(Ref ref) {
  return CategoryRepoImplementation();
}
