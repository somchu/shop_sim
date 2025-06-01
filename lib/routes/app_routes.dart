import 'package:flutter/material.dart';
import '../screens/stage01_shop_name.dart';

class AppRoutes {
  static const String shopName = '/';

  static Map<String, WidgetBuilder> get rs {
    return {shopName: (context) => ShopNameScreen()};
  }
}
