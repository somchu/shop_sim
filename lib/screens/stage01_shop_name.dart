import 'package:flutter/material.dart';
import 'package:pastel_theme_package/pastel_theme_ui_package.dart';
import 'package:shop_sim/services/shop_logic.dart';

class ShopNameScreen extends StatefulWidget {
  const ShopNameScreen({super.key});

  @override
  State<ShopNameScreen> createState() => _ShopNameScreenState();
}

class _ShopNameScreenState extends State<ShopNameScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ตั้งชื่อร้านค้า', style: AppTextStyles.heading),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              CustomTextField(
                controller: _controller,
                hintText: 'ชื่อร้านของคุณ',
              ),
              SizedBox(height: 20),
              CustomButton(
                text: 'เริ่มต้นร้านค้า',
                onPressed:
                    () => ShopLogic.saveShopName(context, _controller.text),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
