import 'package:flutter/material.dart';
import 'package:one_call_login_register/app/config/ColorConfig.dart';

class VolunteerPoints extends StatelessWidget {
  const VolunteerPoints({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
