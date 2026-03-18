import 'package:furniture_store_app/common/models/product_model/product_model.dart';

class CheckoutCalculator {
  static double subtotal(List<ProductModel> items) {
    double sum = 0;
    for (var item in items) {
      sum += item.salePrice;
    }
    return sum;
  }

  static double originalTotal(List<ProductModel> items) {
    double sum = 0;
    for (var item in items) {
      sum += item.basePrice;
    }
    return sum;
  }

  static double discount(List<ProductModel> items) {
    return originalTotal(items) - subtotal(items);
  }

  static double deliveryFee = 5.00;
  static double tax(double subtotal) => subtotal * 0.10;

  static double total(List<ProductModel> items) {
    double sub = subtotal(items);
    return sub + deliveryFee + tax(sub);
  }
}
