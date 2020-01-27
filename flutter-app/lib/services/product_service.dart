import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_shop/services/service_locator.dart';

class ProductService {
  Dio _api = locator<Dio>();

  Future<dynamic> getEletros() async {
    Response response = await _api.get('/products/electro');
    var body = json.decode(response.data);
    return body;
  }
}
