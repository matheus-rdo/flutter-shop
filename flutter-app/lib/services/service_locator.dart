import 'package:dio/dio.dart';
import 'package:flutter_shop/app_config.dart';
import 'package:flutter_shop/services/product_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.I;

//Registro de services e models globais
void setupLocator(AppConfig appConfig) {
  locator.registerSingleton(_createHTTPClient(appConfig.apiBaseUrl));
  locator.registerLazySingleton(() => ProductService());
}

Dio _createHTTPClient(String baseUrl) {
  BaseOptions options = new BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );
  return new Dio(options);
}
