import 'package:flutter/material.dart';

class ItemGrup extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final Function onTap;
  const ItemGrup(
      {super.key,
      required this.onTap,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(5),
          onTap: () {
            onTap();
          },
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(
              image,
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            subtitle,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}