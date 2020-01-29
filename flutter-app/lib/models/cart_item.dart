import 'package:flutter_shop/models/product.dart';
import 'package:json_annotation/json_annotation.dart';
part 'cart_item.g.dart';

@JsonSerializable()
class CartItem {
  Product product;
  int quantity;

  CartItem(this.product, this.quantity);

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);

  Map<String, dynamic> toJson() => _$CartItemToJson(this);
}
