import 'package:furniture_store_app/common/models/cart_model/cart_item_model.dart';

abstract class CartRepo {
  Future<void> updateRemoteCart(String uid, List<CartItemModel> items);

  Future<List<CartItemModel>?> fetchRemoteCart(String uid);
}
