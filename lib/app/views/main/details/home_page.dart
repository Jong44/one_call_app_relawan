import 'package:flutter/material.dart';
import 'package:one_call_login_register/app/config/ColorConfig.dart';

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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // points
          Container(
            height: 140,
            margin: const EdgeInsets.only(top: 40),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 11),
            decoration: BoxDecoration(
              color: ColorConfig.primaryColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // point nominal
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Points Reward',
                          style: TextStyle(color: Colors.white),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.info,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    SizedBox(
                      width: 330,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            textBaseline: TextBaseline.alphabetic,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Text(
                                '1209',
                                style: TextStyle(
                                    fontSize: 48, color: Colors.white),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'points',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          //SizedBox(width: 90),
                          // 'tukar' button
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: Colors.white,
                                width: 0.3,
                              ),
                            ),
                            child: const Text(
                              'Tukar',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          // emergency call
          Container(
            height: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    offset: const Offset(0, 4),
                    blurRadius: 8,
                    spreadRadius: 3,
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                _emergencyCall.length,
                // call card
                (index) => Container(
                  width: 100,
                  height: 140,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // institute logo
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      // institute name
                      Text(
                        _emergencyCall[index]['institute'],
                        style: const TextStyle(
                            fontFamily: 'Inter', fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          // history/
        ],
      ),
    );
  }
}
