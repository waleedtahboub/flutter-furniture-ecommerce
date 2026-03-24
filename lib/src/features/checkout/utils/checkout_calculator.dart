import 'package:furniture_store_app/common/models/cart_model/cart_item_model.dart';

class CheckoutCalculator {
  static double subtotal(List<CartItemModel> items) {
    double sum = 0;
    for (var item in items) {
      sum += (item.product.salePrice * item.quantity);
    }
    return sum;
  }

  static double originalTotal(List<CartItemModel> items) {
    double sum = 0;
    for (var item in items) {
      sum += (item.product.basePrice * item.quantity);
    }
    return sum;
  }

  static double discount(List<CartItemModel> items) {
    return originalTotal(items) - subtotal(items);
  }

  static double deliveryFee = 5.00;
  static double tax(double subtotal) => subtotal * 0.10;

  static double total(List<CartItemModel> items) {
    double sub = subtotal(items);
    return sub + deliveryFee + tax(sub);
  }
}
