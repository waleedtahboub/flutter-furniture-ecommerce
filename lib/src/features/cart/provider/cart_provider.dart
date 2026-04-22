import 'package:furniture_store_app/common/services/database/hive_service.dart';
import 'package:furniture_store_app/src/features/auth/repo/auth_repo_implementation.dart';
import 'package:furniture_store_app/src/features/cart/repo/cart_repo_implementation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:furniture_store_app/common/models/cart_model/cart_item_model.dart';

part 'cart_provider.g.dart';

@riverpod
class CartProvider extends _$CartProvider {
  final _hiveService = HiveService<List<CartItemModel>>('cart_box');

  @override
  Future<List<CartItemModel>> build() async {
    // Read providers synchronously before any 'await'
    final user = ref.watch(userProvider).value;
    final repo = ref.read(cartRepoProvider);

    final list = await _hiveService.get('cart_items');
    final List<CartItemModel> localItems = list?.cast<CartItemModel>() ?? [];

    if (localItems.isNotEmpty) {
      return localItems;
    }

    // Try fetching from Firestore if Hive is empty
    if (user != null) {
      final remoteItems = await repo.fetchRemoteCart(user.uid);
      if (remoteItems != null && remoteItems.isNotEmpty) {
        await _hiveService.save('cart_items', remoteItems);
        return remoteItems;
      }
    }

    return [];
  }

  FutureOr<void> addItem(CartItemModel newItem) {
    final user = ref.read(userProvider).value;
    final repo = ref.read(cartRepoProvider);
    final currentItems = state.value ?? [];
    final index = currentItems.indexWhere(
      (element) => element.id == newItem.id,
    );

    if (index != -1) {
      final List<CartItemModel> newList = List.from(currentItems);
      final existingItem = newList[index];
      newList[index] = existingItem.copyWith(
        quantity: existingItem.quantity + 1,
      );

      state = AsyncData(newList);
      if (user != null) repo.updateRemoteCart(user.uid, newList);
      _hiveService.save('cart_items', newList);
    } else {
      final newList = [...currentItems, newItem];

      state = AsyncData(newList);
      if (user != null) repo.updateRemoteCart(user.uid, newList);
      _hiveService.save('cart_items', newList);
    }
  }

  FutureOr<void> updateQuantity(String id, int number) {
    final user = ref.read(userProvider).value;
    final repo = ref.read(cartRepoProvider);
    final currentItems = state.value ?? [];
    final index = currentItems.indexWhere((element) => element.id == id);

    if (index != -1) {
      final List<CartItemModel> newList = List.from(currentItems);
      final existingItem = newList[index];
      final newQuantity = existingItem.quantity + number;

      if (newQuantity <= 0) {
        newList.removeAt(index);
      } else {
        newList[index] = existingItem.copyWith(quantity: newQuantity);
      }

      state = AsyncData(newList);
      if (user != null) repo.updateRemoteCart(user.uid, newList);
      _hiveService.save('cart_items', newList);
    }
  }

  FutureOr<void> clearCart() {
    final user = ref.read(userProvider).value;
    final repo = ref.read(cartRepoProvider);
    final currentItems = state.value ?? [];

    if (currentItems.isNotEmpty) {
      state = const AsyncData([]);
      if (user != null) repo.updateRemoteCart(user.uid, []);
      _hiveService.save('cart_items', []);
    }
  }
}

@riverpod
double cartTotal(Ref ref) {
  final cartItems = ref.watch(cartProviderProvider).value ?? [];
  return cartItems.fold(
    0.0,
    (total, item) => total + (item.product.salePrice * item.quantity),
  );
}
