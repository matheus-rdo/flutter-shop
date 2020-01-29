import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_shop/models/product.dart';
import 'package:flutter_shop/stores/cart/cart_store.dart';
import 'package:provider/provider.dart';

class PromotionCarouselItem extends StatelessWidget {
  final Product product;

  PromotionCarouselItem(this.product);

  @override
  Widget build(BuildContext context) {
    final cartStore = Provider.of<CartStore>(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 500,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      child: Card(
        elevation: 1,
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            children: <Widget>[
              Text(
                product.name,
                style: Theme.of(context).textTheme.title,
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Image.network(product.img),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'R\$ ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('${product.price.toStringAsFixed(2)}')
                    ],
                  ),
                  Observer(
                    builder: (_) {
                      return cartStore.items
                              .any((item) => item.product.id == product.id)
                          ? IconButton(
                              color: Colors.red[400],
                              icon: Icon(Icons.remove_circle),
                              padding: EdgeInsets.all(0),
                              onPressed: () {
                                cartStore.remove(product);
                              },
                            )
                          : IconButton(
                              color: Colors.blue[600],
                              icon: Icon(Icons.add_shopping_cart),
                              padding: EdgeInsets.all(0),
                              onPressed: () {
                                cartStore.addProduct(product);
                              },
                            );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
