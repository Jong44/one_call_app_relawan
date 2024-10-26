import 'package:flutter/material.dart';
import 'package:one_call/app/config/color_config.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Emergency Group',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  size: 25,
                  color: ColorConfig.primaryColor,
                ),
                Text(
                  'Add Circle',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: ColorConfig.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}
