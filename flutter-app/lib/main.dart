import 'package:flutter/material.dart';
import 'package:flutter_shop/app_config.dart';
import 'package:flutter_shop/services/service_locator.dart';
import 'package:flutter_shop/shop_app.dart';

void main() {
  var appConfig =
      AppConfig(apiBaseUrl: 'http://10.1.24.87:3000', child: ShopApp());
  setupLocator(appConfig);
  runApp(appConfig);
}
