import 'package:flutter_shop/models/product.dart';
import 'package:flutter_shop/stores/cart/cart_store_item.dart';
import 'package:mobx/mobx.dart';
part 'cart_store.g.dart';

class CartStore = _CartStoreBase with _$CartStore;

abstract class _CartStoreBase with Store {
  @observable
  ObservableList<CartStoreItem> items = new ObservableList();

  @computed
  double get totalPrice => items.isNotEmpty
      ? items.map((item) => item.total).reduce((a, b) => a + b)
      : 0;

  @action
  addProduct(Product product, {int quantity = 1}) {
    var cartItem = items.firstWhere((item) => item.product.id == product.id,
        orElse: () => null);
    if (cartItem == null) {
      items.add(new CartStoreItem((product), quantity));
    } else {
      cartItem.quantity += quantity;
    }
    print(cartItem);
  }

  @action
  minusProduct(Product product) {
    var cartItem = items.firstWhere((item) => item.product.id == product.id,
        orElse: () => null);
    if (cartItem != null) {
      cartItem.quantity--;
    }
  }

  @action
  remove(Product product) {
    items.removeWhere((item) => item.product.id == product.id);
  }
}
