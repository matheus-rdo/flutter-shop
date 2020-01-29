// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartItem _$CartItemFromJson(Map<String, dynamic> json) {
  return CartItem(
    json['product'] == null
        ? null
        : Product.fromJson(json['product'] as Map<String, dynamic>),
    json['quantity'] as int,
  );
}

Map<String, dynamic> _$CartItemToJson(CartItem instance) => <String, dynamic>{
      'product': instance.product,
      'quantity': instance.quantity,
    };
