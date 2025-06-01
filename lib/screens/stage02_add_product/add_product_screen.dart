import 'package:flutter/material.dart';
import 'package:pastel_theme_package/pastel_theme_ui_package.dart';
import 'package:shop_sim/screens/stage02_add_product/add_product_form.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('เพิ่มสินค้าใหม่', style: AppTextStyles.heading),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: AddProductForm(),
        ),
      ),
    );
  }
}
