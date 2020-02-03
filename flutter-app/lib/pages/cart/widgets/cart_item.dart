import 'package:flutter/material.dart';
import 'package:flutter_shop/stores/cart/cart_store.dart';
import 'package:provider/provider.dart';

class CartPageItem extends StatelessWidget {
  final int itemIndex;

  CartPageItem(this.itemIndex);

  @override
  Widget build(BuildContext context) {
    final cartStore = Provider.of<CartStore>(context);
    final cartItem = cartStore.items[itemIndex];
    return Dismissible(
      key: Key(cartItem.product.id.toString()),
      background: Container(
        color: Colors.red,
        child: Align(
          alignment: Alignment(-0.9, 0.0),
          child: Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
      ),
      direction: DismissDirection.startToEnd,
      child: ListTile(
        leading: Image.network(
          cartItem.product.img,
          width: 80,
        ),
        title: Text(cartItem.product.name),
        subtitle: Text(cartItem.product.brand),
      ),
      onDismissed: (direction) {
        cartStore.remove(cartItem.product);
      },
    );
  }
}
