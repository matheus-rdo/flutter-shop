// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product(
    json['id'] as int,
    json['name'] as String,
    json['img'] as String,
    json['brand'] as String,
    (json['price'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      'brand': instance.brand,
      'price': instance.price,
    };
