import 'package:flutter/material.dart';
import 'package:flutter_shop/routes.dart';
import 'package:flutter_shop/stores/cart/cart_store.dart';
import 'package:provider/provider.dart';

class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<CartStore>(
          create: (_) => CartStore(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Shop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: routes,
        initialRoute: '/',
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
