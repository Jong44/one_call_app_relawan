import 'package:flutter/material.dart';

Row bottomNavBarTemp() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // left-hand-side button
        Expanded(
          //width: (screen.width * 0.5) - 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // icon home
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    size: 32,
                  ),
                  Text('Home')
                ],
              ),
              // icon contact
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.contact_phone,
                    size: 32,
                  ),
                  Text('Home')
                ],
              ),
            ],
          ),
        ),
        // right-hand-side button
        Expanded(
          //width: (screen.width * 0.5) - 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // icon information
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    size: 32,
                  ),
                  Text('Home')
                ],
              ),
              // icon profile
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    size: 32,
                  ),
                  Text('Home')
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

