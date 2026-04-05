import 'package:furniture_store_app/common/models/category_model/category_model.dart';
export 'category_repo_implementation.dart' show categoryRepoProvider;


abstract class CategoryRepo {
  Future<List<CategoryModel>> fetchAllCategories();

  Future<void> addCategories();

}
