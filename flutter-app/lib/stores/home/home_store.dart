import 'package:flutter_shop/models/product.dart';
import 'package:flutter_shop/services/product_service.dart';
import 'package:flutter_shop/services/service_locator.dart';
import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  ProductService productService = locator<ProductService>();

  @observable
  List<Product> promotions;

  @action
  fetchPromotions() {
    promotions = null;
    productService.loadPromotions().then((promos) => this.promotions = promos);
  }
}
