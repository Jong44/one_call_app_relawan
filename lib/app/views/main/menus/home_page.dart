import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
//import 'package:one_call_login_register/app/config/ColorConfig.dart';
import 'package:one_call/app/controller/main/location_controller.dart';
import 'package:one_call/app/widgets/IndexMain/HomePage/emergency_call.dart';
import 'package:one_call/app/widgets/IndexMain/HomePage/volunteer_points.dart';
import 'package:one_call/app/widgets/IndexMain/HomePage/notification_icon.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List _emergencyCall = [
    {
      'institute': 'Ambulance',
      'image': 'image',
    },
    {
      'institute': 'Polisi',
      'image': 'image',
    },
    {
      'institute': 'Damkar',
      'image': 'image',
    },
  ];

  final List _riwayatTerakhir = [
    {
      'date': 'Yesterday',
      'time': '17:30',
      'poin': 32,
    },
    {
      'date': 'April 21',
      'time': '10:29',
      'poin': 87,
    }
  ];
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LocationController>();
    print('address: ${controller.address.value}');
    print('is empty: ${controller.address.value.isEmpty}');
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.white,
        shadowColor: Colors.grey.shade600,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: SvgPicture.asset('assets/images/logo.svg'),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // location title
            Row(
              children: [
                Icon(
                  Iconsax.location,
                  size: 10,
                ),
                SizedBox(width: 5),
                Text(
                  'Current Location',
                  style: TextStyle(fontSize: 10, fontFamily: 'Inter'),
                )
              ],
            ),
            // current location
            Obx(
              () => Text(
                (controller.address.value.isNotEmpty)
                    ? controller.address.value
                    : 'Menunggu Lokasi',
                style: const TextStyle(fontSize: 12, fontFamily: 'Inter'),
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: NotificationIcon(),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // points
              const VolunteerPoints(),
              const SizedBox(height: 30),
              // emergency call
              EmergencyCall(emergencyCall: _emergencyCall),
              const SizedBox(height: 10),
              EmergencyCall(emergencyCall: _emergencyCall),
              // history/
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Riwayat Terakhir',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _riwayatTerakhir[0]['date'],
                                style: const TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w800),
                              ),
                              Text(_riwayatTerakhir[0]['time']),
                            ],
                          ),
                          Text(
                            ' +${_riwayatTerakhir[0]['poin']} pts',
                            style: TextStyle(
                                color: Colors.green.shade700,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _riwayatTerakhir[1]['date'],
                                style: const TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w800),
                              ),
                              Text(_riwayatTerakhir[1]['time']),
                            ],
                          ),
                          Text(
                            ' +${_riwayatTerakhir[1]['poin']} pts',
                            style: TextStyle(
                                color: Colors.green.shade700,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
