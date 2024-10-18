import 'package:flutter/material.dart';
import 'package:one_call_login_register/app/config/ColorConfig.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //final screen = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
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
                      const Row(
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '1209',
                            style: TextStyle(fontSize: 48, color: Colors.white),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'points',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
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
            const SizedBox(height: 30),
            // emergency call
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(color: Colors.grey)
                ]
              ),
            ),
            // history
          ],
        ),
      ),
    );
  }
}
