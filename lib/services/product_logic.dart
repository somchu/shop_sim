import 'package:flutter/material.dart';
import 'package:shop_sim/models/appmodels.dart';
import 'package:shop_sim/services/product_service.dart';

import '../widgets/alert.dart';

class ProductLogic {
  static Future<void> saveProduct(BuildContext context, Product product) async {
    await ProductService.saveProduct(product);

    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('บันทึก ${product.name} แล้ว'),
        duration: Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
      ),
    );

    Future.delayed(const Duration(seconds: 2), () {
      if (!context.mounted) return;
      Navigator.pop(context);
    });
  }
}
