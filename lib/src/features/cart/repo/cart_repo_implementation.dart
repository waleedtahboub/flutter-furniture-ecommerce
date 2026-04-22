import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:furniture_store_app/common/models/cart_model/cart_item_model.dart';
import 'package:furniture_store_app/src/features/cart/repo/cart_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartRepoImplementation implements CartRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Future<List<CartItemModel>?> fetchRemoteCart(String uid) async {
    final doc = await _firestore.collection('user').doc(uid).get();

    try {
      if (!doc.exists || doc.data()?['cart'] == null) {
        return null;
      }

      final List<dynamic> cartData = doc.data()!['cart'];
      return cartData
          .map((item) => CartItemModel.fromJson(item as Map<String, dynamic>))
          .toList();
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> updateRemoteCart(String uid, List<CartItemModel> items) async {
    try {
      final cartData = items.map((item) => item.toJson()).toList();

      await _firestore.collection('user').doc(uid).set({
        'cart': cartData,
        'lastUpdated': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));

    } catch (e) {
      return;
    }
  }
}

final cartRepoProvider = Provider<CartRepo>((ref) {
  return CartRepoImplementation();
});