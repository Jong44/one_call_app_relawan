import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_call_login_register/app/config/ColorConfig.dart';
import 'package:one_call_login_register/app/routes/app_routes.dart';
import 'package:one_call_login_register/app/views/auth/login/login_page.dart';
import 'package:one_call_login_register/app/views/main/index_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'On Call',
      theme: ThemeData(
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(seedColor: ColorConfig.primaryColor),
        useMaterial3: true,
      ),
      //home: const LoginPage(),
      initialRoute: 'auth',
      getPages: AppRoutes.pages,
    );
  }
}
