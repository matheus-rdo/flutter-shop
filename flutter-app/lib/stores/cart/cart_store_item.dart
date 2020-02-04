import 'package:flutter_shop/models/product.dart';
import 'package:mobx/mobx.dart';
part 'cart_store_item.g.dart';

class CartStoreItem = _CartStoreItemBase with _$CartStoreItem;

abstract class _CartStoreItemBase with Store {
  _CartStoreItemBase(this.product, this.quantity);

  @observable
  Product product;
  @observable
  int quantity = 1;

  @computed
  double get total => product.price * quantity;

  @action
  add({int amount = 1}) => quantity += amount;

  @action
  remove({int amount = 1}) {
    if (amount < quantity) {
      quantity -= amount;
    } else {
      quantity = 1;
    }
  }
}
