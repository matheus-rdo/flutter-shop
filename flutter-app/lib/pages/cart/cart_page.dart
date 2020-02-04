import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_shop/pages/cart/widgets/cart_item.dart';
import 'package:flutter_shop/stores/cart/cart_store.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartStore = Provider.of<CartStore>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrinho'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: cartStore.items.length,
            itemBuilder: (context, index) => CartPageItem(index)),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Observer(
                builder: (_) {
                  return ListTile(
                    title: Text(
                      "Total:",
                    ),
                    subtitle:
                        Text('R\$ ${cartStore.totalPrice.toStringAsFixed(2)}'),
                  );
                },
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                child: MaterialButton(
                  padding: EdgeInsets.all(10),
                  color: Colors.blueAccent,
                  child: Text(
                    'Comprar',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
