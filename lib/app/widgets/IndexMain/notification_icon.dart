import 'package:flutter/material.dart';
import 'package:one_call_login_register/app/config/ColorConfig.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        alignment: const Alignment(0.7, -0.5),
        children: [
          const Icon(
            Icons.notifications,
            size: 28,
          ),
          Container(
            height: 9,
            width: 9,
            padding: const EdgeInsets.all(1),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(64)),
            child: Container(
              decoration: BoxDecoration(
                  color: ColorConfig.primaryColor,
                  borderRadius: BorderRadius.circular(64)),
            ),
          )
        ],
      ),
    );
  }
}
