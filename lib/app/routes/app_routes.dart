import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:one_call_login_register/app/bindings/auth_bindings.dart';
import 'package:one_call_login_register/app/views/auth/login/login_page.dart';
import 'package:one_call_login_register/app/views/main/index_main.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: '/',
      page: () => IndexMain(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: 'auth',
      page: () => const LoginPage(),
      binding: AuthBindings(),
      transition: Transition.fadeIn,
    )
  ];
}
