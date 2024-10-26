// package
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
//
import 'package:one_call/app/config/color_config.dart';
import 'package:one_call/app/controller/main/location_controller.dart';
import 'package:one_call/app/controller/main/notifications_controller.dart';
import 'package:one_call/app/controller/main/index_main_controller.dart';

class IndexMain extends StatelessWidget {
  IndexMain({super.key});

  // controllers
  final controller = Get.find<IndexMainController>();
  final notificationsController = Get.find<NotificationsController>();
  final locationController = Get.find<LocationController>();

  static const String route = '/home';

  final List _menuItems = [
    {'icon': Iconsax.home, 'iconActive': Iconsax.home5, 'title': 'Beranda'},
    {
      'icon': Iconsax.keyboard,
      'iconActive': Iconsax.keyboard5,
      'title': 'Kontak',
    },
    {
      'size': 80.0,
    },
    {
      'icon': Iconsax.element_3,
      'iconActive': Iconsax.element_35,
      'title': 'Informasi',
    },
    {
      'icon': Icons.person_2_outlined,
      'iconActive': Icons.person_2,
      'title': 'Profil',
    },
  ];
  //final String _location = LocationController().address.value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(
        () => SafeArea(
          child: controller.pages[controller.currentIndex.value],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 90,
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: Color(0xfff6f6f6)),
        child: Row(
          children: List.generate(_menuItems.length, (index) {
            if (_menuItems[index]['size'] != null) {
              return Expanded(child: Container());
              // Container(
              //   width: _menuItems[index]['size'],
              // );
            }
            return Expanded(
              child: InkWell(
                onTap: () {
                  controller.changeIndex(index);
                },
                child: Obx(
                  () => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        controller.currentIndex.value == index
                            ? _menuItems[index]['iconActive']
                            : _menuItems[index]['icon'],
                        color: controller.currentIndex.value == index
                            ? ColorConfig.primaryColor
                            : Colors.grey.shade600,
                        size: 28,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        _menuItems[index]['title'],
                        style: TextStyle(
                            color: controller.currentIndex.value == index
                                ? ColorConfig.primaryColor
                                : Colors.grey.shade600),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          notificationsController.triggeredEmergencyNotifications(
            url:
                'https://maps.googleapis.com/maps/api/staticmap?center=37.7749,-122.4194&zoom=14&size=400x400&key=AIzaSyAWGOnzfAlD2vG5P7ul3TrMFTSlNrBdt7M',
          );

          // Get.bottomSheet(Container(
          //   height: 500,
          //   decoration: const BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(18),
          //           topRight: Radius.circular(18))),
          // ));
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Transform.rotate(
              angle: -0.8,
              child: Container(
                height: 72,
                width: 76,
                decoration: BoxDecoration(
                    color: ColorConfig.primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(0, 1),
                      ),
                    ]),
              ),
            ),
            const Text(
              '505',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
