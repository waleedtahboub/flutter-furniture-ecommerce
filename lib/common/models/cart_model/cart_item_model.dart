import 'package:furniture_store_app/common/models/product_model/product_model.dart';

class CartItemModel {
  CartItemModel({required this.product, required this.quantity});
  final ProductModel product;
  final int quantity;

  CartItemModel copyWith({
    ProductModel? product,
    int? quantity,
  }) {
    return CartItemModel(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
      
    );
  }
}
