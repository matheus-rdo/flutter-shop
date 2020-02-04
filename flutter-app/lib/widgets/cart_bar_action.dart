import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_shop/routes.dart';
import 'package:flutter_shop/stores/cart/cart_store.dart';
import 'package:provider/provider.dart';

class CartBarAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartStore = Provider.of<CartStore>(context);
    return Observer(
      builder: (_) {
        return Badge(
          position: BadgePosition.topRight(top: 0, right: 3),
          animationDuration: Duration(milliseconds: 500),
          animationType: BadgeAnimationType.scale,
          badgeContent: Text(cartStore.items.length.toString()),
          badgeColor: Colors.blue[200],
          child: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.cart);
            },
          ),
        );
      },
    );
  }
}
