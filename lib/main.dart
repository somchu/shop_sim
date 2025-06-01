import 'package:flutter/material.dart';
import 'package:pastel_theme_package/pastel_theme_ui_package.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.shopName,
      routes: AppRoutes.rs,
      theme: PastelThemePackage.themeData,
      debugShowCheckedModeBanner: false,
    );
  }
}
