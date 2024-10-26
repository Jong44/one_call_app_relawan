import 'package:flutter/material.dart';

class ItemContact extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String message;
  final String time;
  final bool isRead;
  final Function onTap;
  const ItemContact({
    super.key,
    required this.onTap,
    required this.imageUrl,
    required this.name,
    required this.message,
    required this.time,
    required this.isRead,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shadowColor: Colors.grey.withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 4,
          child: ListTile(
            onTap: () {
              onTap();
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            tileColor: Colors.white,
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text(
              name,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              message,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                if (!isRead)
                  Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
