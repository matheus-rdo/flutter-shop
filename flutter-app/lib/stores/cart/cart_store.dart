import 'package:flutter_shop/models/cart_item.dart';
import 'package:flutter_shop/models/product.dart';
import 'package:mobx/mobx.dart';
part 'cart_store.g.dart';

class CartStore = _CartStoreBase with _$CartStore;

abstract class _CartStoreBase with Store {
  @observable
  ObservableList<CartItem> items = new ObservableList();

  @computed
  int get itemsLength => items.length;

  @computed
  double get totalPrice => items.isNotEmpty
      ? items
          .map((item) => item.product.price * item.quantity)
          .reduce((a, b) => a + b)
      : 0;

  @action
  addProduct(Product product, {int quantity = 1}) {
    items.add(new CartItem((product), quantity));
  }

  @action
  remove(Product product) {
    items.removeWhere((item) => item.product.id == product.id);
  }
}
