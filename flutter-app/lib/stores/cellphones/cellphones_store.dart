import 'package:flutter_shop/models/product.dart';
import 'package:flutter_shop/services/product_service.dart';
import 'package:flutter_shop/services/service_locator.dart';
import 'package:mobx/mobx.dart';
part 'cellphones_store.g.dart';

class CellphoneStore = _CellphoneStoreBase with _$CellphoneStore;

abstract class _CellphoneStoreBase with Store {
  ProductService productService = locator<ProductService>();

  @observable
  List<Product> cellphones;

  @action
  fetchCellphones() {
    cellphones = null;
    productService
        .loadCellphones()
        .then((products) => this.cellphones = products);
  }
}
