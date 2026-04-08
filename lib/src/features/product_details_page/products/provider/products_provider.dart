import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:furniture_store_app/src/features/product_details_page/repo/products_repo.dart';

part 'products_provider.g.dart';

@Riverpod(keepAlive: true)
class ProductsNotifier extends _$ProductsNotifier {
  @override
  FutureOr<void> build() {
   return null;
  }
    Future<void> addProducts() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(productsRepoProvider).addProducts();
      return ;
    });
  }
}