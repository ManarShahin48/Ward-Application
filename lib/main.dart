import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ward/utils/binding.dart';
import 'package:ward/utils/color_manager.dart';
import 'package:ward/view/auth/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ColorManager.primary,
        primaryColorLight: ColorManager.primary,
      ),
      home: const LoginScreen(),
    );
  }
}
