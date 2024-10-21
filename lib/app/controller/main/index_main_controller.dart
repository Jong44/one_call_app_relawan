import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_call_login_register/app/views/main/menus/contact_page.dart';
import 'package:one_call_login_register/app/views/main/menus/home_page.dart';
import 'package:one_call_login_register/app/views/main/menus/information_page.dart';
import 'package:one_call_login_register/app/views/main/menus/profile_page.dart';

class IndexMainController extends GetxController {
  List<Widget> pages = [
    HomePage(),
    ContactPage(),
    SizedBox(),
    InformationPage(),
    ProfilePage(),
  ];

  RxInt _currentIndex = 0.obs;
  RxInt get currentIndex => _currentIndex;

  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
