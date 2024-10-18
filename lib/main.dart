import 'package:flutter/material.dart';
import 'package:one_call_login_register/app/config/ColorConfig.dart';
import 'package:one_call_login_register/app/views/auth/login/login_page.dart';
import 'package:one_call_login_register/app/views/main/menus/index_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'On Call',
      theme: ThemeData(
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(seedColor: ColorConfig.primaryColor),
        useMaterial3: true,
      ),
      home: const Loginpage(),
      initialRoute: Loginpage.route,
      routes: {
        Loginpage.route: (context) => const Loginpage(),
        IndexMain.route: (context) => const IndexMain(),
      },
    );
  }
}
