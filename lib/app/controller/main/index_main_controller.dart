import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_call/app/views/main/menus/contact_page.dart';
import 'package:one_call/app/views/main/menus/home_page.dart';
import 'package:one_call/app/views/main/menus/information_page.dart';
import 'package:one_call/app/views/main/menus/profile_page.dart';

class IndexMainController extends GetxController {
  RxInt _currentIndex = 0.obs;
  RxBool _isHelping = false.obs;
  RxInt get currentIndex => _currentIndex;
  RxBool get isHelping => _isHelping;

  void helping() {
    _isHelping = (!_isHelping.value).obs;
  }

  List<Widget> pages = [
    HomePage(),
    ContactPage(),
    SizedBox(),
    InformationPage(),
    ProfilePage(),
  ];

  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
