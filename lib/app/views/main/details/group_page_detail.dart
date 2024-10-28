import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:one_call/app/config/color_config.dart';
import 'package:one_call/app/controller/feature/group_chat_controller.dart';
import 'package:one_call/app/widgets/IndexMain/ContactPage/item_contact.dart';
import 'package:one_call/app/widgets/IndexMain/ContactPage/search_bar.dart';

class GroupPageDetail extends StatelessWidget {
  const GroupPageDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<GroupChatController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Grup Detail',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {},
            child: const Row(
              children: [
                Icon(
                  Icons.add,
                  size: 20,
                  color: ColorConfig.primaryColor,
                ),
                SizedBox(width: 5),
                Text(
                  "Add Contact",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: ColorConfig.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SearchBars(
                  hintText: 'Search Contact',
                  onChanged: (value) {},
                ),
                const SizedBox(height: 30),
                Column(
                  children:
                      List.generate(controller.contactList.length, (index) {
                    return Obx(() {
                      return ItemContact(
                        onTap: () {
                          Get.toNamed('/group/chat/$index');
                        },
                        imageUrl: "https://via.placeholder.com/150",
                        name: controller.contactList[index]['name'],
                        message: "Hello",
                        time: "10:00",
                        isRead: false,
                      );
                    });
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
