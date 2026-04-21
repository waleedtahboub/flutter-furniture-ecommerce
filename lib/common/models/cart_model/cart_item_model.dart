import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:hive_ce_flutter/adapters.dart';

part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@freezed
@HiveType(typeId: 0)
abstract class CartItemModel with _$CartItemModel {
  factory CartItemModel({
    @HiveField(0) required String id,
    @HiveField(1) required ProductModel product,
    @HiveField(2) required int quantity,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);
}
