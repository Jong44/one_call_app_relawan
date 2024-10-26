import 'package:flutter/material.dart';
import 'package:one_call/app/config/color_config.dart';

class CardLokasiMap extends StatelessWidget {
  final String locationUser;
  final String locationRelawan;
  const CardLokasiMap({
    super.key,
    required this.locationUser,
    required this.locationRelawan,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 100),
      width: double.infinity,
      height: 135,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 18,
                height: 18,
                decoration: const BoxDecoration(
                  color: ColorConfig.primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Lokasi Anda',
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    locationUser,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
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
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorConfig.primaryColor, width: 3),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Lokasi Relawan',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    locationRelawan,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
