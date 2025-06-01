import 'package:flutter/material.dart';
import 'package:shop_sim/routes/app_routes.dart';
import 'package:shop_sim/services/shop_service.dart';
import 'package:shop_sim/validators/validators.dart';
import '../widgets/alert.dart';

class ShopLogic {
  static Future<void> saveShopName(BuildContext context, String name) async {
    final error = Validators.validateShopName(name);
    if (error != null) {
      Alert.showWarning(
        context: context,
        title: 'ชื่อไม่ถูกต้อง',
        message: error,
      );
      return;
    }

    await ShopService.saveShopName(name);

    if (!context.mounted) return; //เช็คก่อนว่า context เปิดอยู่
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('ร้าน "$name" ถูกบันทึกเรียบร้อยแล้ว'),
        duration: Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
      ),
    );

    Future.delayed(const Duration(seconds: 2), () {
      if (!context.mounted) return; //เช็คก่อนว่า context เปิดอยู่
      Navigator.pushReplacementNamed(context, AppRoutes.home);
    });
  }
}
