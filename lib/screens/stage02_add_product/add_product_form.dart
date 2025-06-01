import 'package:flutter/material.dart';
import 'package:pastel_theme_package/pastel_theme_ui_package.dart';
import 'package:shop_sim/models/appmodels.dart';
import 'package:shop_sim/services/product_logic.dart';
import 'package:shop_sim/services/product_service.dart';

class AddProductForm extends StatefulWidget {
  const AddProductForm({super.key});

  @override
  State<AddProductForm> createState() => _AddProductFormState();
}

class _AddProductFormState extends State<AddProductForm> {
  final _nameCtrl = TextEditingController();
  final _priceCtrl = TextEditingController();
  String _category = 'อาหาร';
  late Product _product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          hintText: 'hintText',
          controller: _nameCtrl,
          label: 'ชื่อสินค้า',
        ),
        SizedBox(height: 10),
        CustomTextField(
          controller: _priceCtrl,
          keyboardType: TextInputType.number,
          label: 'ราคา',
        ),
        SizedBox(height: 10),
        DropdownButton<String>(
          value: _category,
          items:
              [
                'อาหาร',
                'ของใช้',
                'ของเล่น',
              ].map((c) => DropdownMenuItem(value: c, child: Text(c))).toList(),
          onChanged: (value) => setState(() => _category = value!),
        ),
        SizedBox(height: 20),
        CustomButton(
          text: 'บันทึกสินค้า',
          onPressed: () {
            _product = Product(
              name: _nameCtrl.text,
              price: int.tryParse(_priceCtrl.text)!,
              category: _category,
            );
            ProductLogic.saveProduct(context, _product);
          },
        ),
      ],
    );
  }
}
