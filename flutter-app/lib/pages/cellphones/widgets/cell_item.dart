import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_shop/models/product.dart';
import 'package:flutter_shop/stores/cart/cart_store.dart';
import 'package:provider/provider.dart';

class CellItem extends StatelessWidget {
  final Product cellphone;

  CellItem(this.cellphone);

  @override
  Widget build(BuildContext context) {
    final cartStore = Provider.of<CartStore>(context);
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Image.network(cellphone.img),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(cellphone.name),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                cellphone.brand,
                style: TextStyle(fontSize: 11, color: Colors.grey[600]),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'R\$ ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('${cellphone.price.toStringAsFixed(2)}')
                    ],
                  ),
                  Observer(
                    builder: (_) {
                      return cartStore.items
                              .any((item) => item.product.id == cellphone.id)
                          ? IconButton(
                              color: Colors.red[400],
                              icon: Icon(Icons.remove_circle),
                              padding: EdgeInsets.all(0),
                              onPressed: () {
                                cartStore.remove(cellphone);
                              },
                            )
                          : IconButton(
                              color: Colors.blue[600],
                              icon: Icon(Icons.add_shopping_cart),
                              padding: EdgeInsets.all(0),
                              onPressed: () {
                                cartStore.addProduct(cellphone);
                              },
                            );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
