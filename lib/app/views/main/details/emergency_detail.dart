import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:one_call/app/config/color_config.dart';
import 'package:one_call/app/controller/main/maps_controller.dart';
import 'package:one_call/app/widgets/IndexMain/card_location_map.dart';
import 'package:one_call/app/widgets/input_field.dart';

class EmergencyDetail extends GetView<MapController> {
  const EmergencyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Obx(() {
      if (controller.currentPosition.value == const LatLng(0, 0)) {
        return const Center(child: CircularProgressIndicator());
      }
      return Stack(
        children: [
          GoogleMap(
            markers: controller.markers,
            initialCameraPosition: CameraPosition(
                target: controller.currentPosition.value, zoom: 15),
          ),
          CardLokasiMap(
            locationUser: controller.address.value,
            locationRelawan: controller.address.value,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                height: 350,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 80,
                          width: MediaQuery.of(context).size.width * 0.8,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: const BoxDecoration(
                            color: ColorConfig.primaryColor,
                          ),
                          child: const Text(
                            "Soedib Sedang Dalam Keadaan Darurat",
                            maxLines: 2,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 80,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                            color: ColorConfig.primaryColor.withOpacity(0.05),
                          ),
                          child: const Text(
                            "10 min",
                            maxLines: 2,
                            style: TextStyle(
                              color: ColorConfig.primaryColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage("assets/images/1.jpeg"),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Soedib",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Butuh Pertolongan",
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.73,
                                decoration: BoxDecoration(
                                  color:
                                      ColorConfig.primaryColor.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const TextField(
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Type a message",
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: ColorConfig.primaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          SlideAction(
                            onSubmit: () {},
                            submittedIcon: Icon(Icons.arrow_right),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ],
      );
    }));
  }
}
