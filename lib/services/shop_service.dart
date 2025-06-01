import 'package:shared_preferences/shared_preferences.dart';

class ShopService {
  static const _shopNameKey = 'shop_name';

  static Future<void> saveShopName(String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_shopNameKey, name);
  }

  static Future<String?> getShopName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_shopNameKey);
  }
}
