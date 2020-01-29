import 'package:dio/dio.dart';
import 'package:flutter_shop/models/product.dart';
import 'package:flutter_shop/services/service_locator.dart';

class ProductService {
  Dio _api = locator<Dio>();

  Future<List<Product>> loadCellphones() async {
    Response<List<dynamic>> response = await _api.get('/products/cell');
    return response.data.map((d) => new Product.fromJson(d)).toList();
  }

  Future<List<Product>> loadPromotions() async {
    Response<List<dynamic>> response = await _api.get('/products/promo');
    return response.data.map((d) => new Product.fromJson(d)).toList();
  }
}
