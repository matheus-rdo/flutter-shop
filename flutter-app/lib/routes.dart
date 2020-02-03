import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/cart/cart_page.dart';
import 'package:flutter_shop/pages/cellphones/cell_page.dart';
import 'package:flutter_shop/pages/electro/electro_page.dart';
import 'package:flutter_shop/pages/home/home.dart';

class Routes {
  static const String home = '/';
  static const String electro = '/electro';
  static const String cellphones = '/cellphones';
  static const String cart = '/cart';
}

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  Routes.home: (BuildContext context) => HomePage(),
  Routes.electro: (BuildContext context) => ElectroPage(),
  Routes.cellphones: (BuildContext context) => CellPhonesPages(),
  Routes.cart: (BuildContext context) => CartPage(),
};
