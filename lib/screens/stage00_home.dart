import 'package:flutter/material.dart';
import 'package:pastel_theme_package/pastel_theme_ui_package.dart';
import 'package:shop_sim/routes/app_routes.dart';
import 'package:shop_sim/services/shop_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? _shopName;
  @override
  void initState() {
    super.initState();
    _loadShopName();
  }

  Future<void> _loadShopName() async {
    final name = await ShopService.getShopName();
    setState(() {
      _shopName = name ?? 'ร้านของฉัน';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('หน้าร้าน', style: AppTextStyles.heading)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ยินดีต้อนรับสู่', style: AppTextStyles.body),
              SizedBox(height: 10),
              Text(_shopName ?? '', style: AppTextStyles.body),
              SizedBox(height: 30),
              CustomButton(
                text: 'เพิ่มรหัสสินค้า',
                onPressed:
                    () => Navigator.pushNamed(context, AppRoutes.product),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
