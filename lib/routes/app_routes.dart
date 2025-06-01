import 'package:flutter/material.dart';
import 'package:shop_sim/screens/stage00_home.dart';
import 'package:shop_sim/screens/stage02_add_product/add_product_screen.dart';
import '../screens/stage01_shop_name.dart';

class AppRoutes {
  static const String shopName = '/';
  static const String home = '/home';
  static const String product = '/product';

  static Map<String, WidgetBuilder> get rs {
    return {
      shopName: (context) => ShopNameScreen(),
      home: (context) => HomeScreen(),
      product: (context) => ProductScreen(),
    };
  }
}
