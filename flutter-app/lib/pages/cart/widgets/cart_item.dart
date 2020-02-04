import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
      child: Container(
        padding: EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10, right: 20),
              child: Image.network(
                cartItem.product.img,
                width: 80,
                height: 80,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(cartItem.product.name),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    cartItem.product.brand,
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.add,
                            color: Colors.black45,
                          ),
                          onPressed: cartItem.add,
                        ),
                        Observer(
                          builder: (_) {
                            return Text(
                              cartItem.quantity.toString(),
                              style: Theme.of(context).textTheme.caption,
                            );
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.remove,
                            color: Colors.black45,
                          ),
                          onPressed: cartItem.remove,
                        )
                      ],
                    ),
                    Observer(
                      builder: (_) {
                        return Text(
                          'R\$ ${cartItem.total.toStringAsFixed(2)}',
                          style: Theme.of(context).textTheme.body2,
                        );
                      },
                    )
                  ],
                )),
          ],
        ),
      ),
      onDismissed: (direction) {
        cartStore.remove(cartItem.product);
      },
    );
  }
}
