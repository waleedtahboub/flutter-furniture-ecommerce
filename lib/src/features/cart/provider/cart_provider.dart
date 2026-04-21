import 'package:furniture_store_app/common/services/database/hive_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:furniture_store_app/common/models/cart_model/cart_item_model.dart';

part 'cart_provider.g.dart';

@riverpod
class CartProvider extends _$CartProvider {
  final _hiveService = HiveService<List<CartItemModel>>('cart_box');

  @override
  Future<List<CartItemModel>> build() async {
    final list = await _hiveService.get('cart_items');
    return list ?? [];
  }

  FutureOr<void> addItem(CartItemModel newItem) async {
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
      await _hiveService.save('cart_items', newList);
      state = AsyncData(newList);
    } else {
      final newList = [...currentItems, newItem];
      await _hiveService.save('cart_items', newList);
      state = AsyncData(newList);
    }
  }

  FutureOr<void> updateQuantity(String id, int number) async {
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
      await _hiveService.save('cart_items', newList);
      state = AsyncData(newList);
    }
  }

  FutureOr<void> clearCart() async {
    final currentItems = state.value ?? [];

    if (currentItems.isNotEmpty) {
      final List<CartItemModel> newList = List.from(currentItems);
      newList.clear();

      await _hiveService.save('cart_items', []);
      state = const AsyncData([]);
    }
  }
}

@riverpod
double cartTotal( Ref  ref) {
  final cartItems = ref.watch(cartProviderProvider).value ?? [];
  return cartItems.fold(
    0.0,
    (total, item) => total + (item.product.salePrice * item.quantity),
  );
}
