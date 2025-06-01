import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_sim/models/appmodels.dart';

class ProductService {
  static const _key = 'products';

  static Future<void> saveProduct(Product product) async {
    final prefs = await SharedPreferences.getInstance();
    final list = prefs.getStringList(_key) ?? [];

    list.add(jsonEncode(product.toJson()));
    await prefs.setStringList(_key, list);
  }

  static Future<List<Product>> getAll() async {
    final prefs = await SharedPreferences.getInstance();
    final list = prefs.getStringList(_key) ?? [];

    return list.map((jsonStr) {
      final map = jsonDecode(jsonStr) as Map<String, dynamic>;
      return Product.fromJson(map);
    }).toList();
  }

  static Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }
}
