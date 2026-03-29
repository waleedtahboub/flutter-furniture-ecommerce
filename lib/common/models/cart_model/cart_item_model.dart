import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';

part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@freezed
abstract class CartItemModel with _$CartItemModel {
  factory CartItemModel({
    required ProductModel product,
    required int quantity,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);
}

