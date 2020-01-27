import 'package:dio/dio.dart';
import 'package:flutter_shop/models/product.dart';
import 'package:flutter_shop/services/service_locator.dart';
import 'package:mobx/mobx.dart';
part 'cellphones_store.g.dart';

class CellphoneStore = _CellphoneStoreBase with _$CellphoneStore;

abstract class _CellphoneStoreBase with Store {
  @observable
  List<Product> cellphones;

  @action
  fetchElectros() {
    cellphones = null;
    loadElectros().then((products) => this.cellphones = products);
  }

  Future<List<Product>> loadElectros() async {
    var api = locator.get<Dio>();
    Response<List<dynamic>> response = await api.get('/products/electro');
    return response.data.map((d) => new Product.fromJson(d)).toList();
  }
}
