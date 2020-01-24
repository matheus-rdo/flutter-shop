import 'package:flutter/material.dart';
import 'package:flutter_shop/app_config.dart';
import 'package:flutter_shop/shop_app.dart';

void main() =>
    runApp(AppConfig(apiBaseUrl: 'http://my-homolog-url', child: ShopApp()));
