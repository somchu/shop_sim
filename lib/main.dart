import 'package:flutter/material.dart';
import 'package:pastel_theme_package/pastel_theme_ui_package.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text('ทดสอบ', style: AppTextStyles.body)),
      ),
    );
  }
}
