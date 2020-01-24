import 'package:flutter/material.dart';
import 'package:flutter_shop/routes.dart';

class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
    );
  }
}
