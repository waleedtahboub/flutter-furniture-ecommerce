import 'package:furniture_store_app/common/models/category_model/category_model.dart';
import 'package:furniture_store_app/src/features/category/repo/category_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_provider.g.dart';

@Riverpod(keepAlive: true)
class CategoriesNotifier extends _$CategoriesNotifier {
  @override
  FutureOr<List<CategoryModel>> build() {
    return ref.read(categoryRepoProvider).fetchAllCategories();
  }

  Future<void> addCategories() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(categoryRepoProvider).addCategories();
      return [];
    });
  }
}
