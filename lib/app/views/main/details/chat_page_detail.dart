import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_call/app/config/color_config.dart';
import 'package:one_call/app/controller/feature/chat_controller.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ChatController>();
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tanjung",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Online",
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Expanded(
            child: Obx(() {
              return ListView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                itemCount: controller.messageDummy.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 200,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Align(
                      alignment:
                          controller.messageDummy[index]['sender'] == 'user'
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color:
                              controller.messageDummy[index]['sender'] == 'user'
                                  ? ColorConfig.primaryColor
                                  : Colors.grey[200],
                          borderRadius: BorderRadius.only(
                            topLeft: controller.messageDummy[index]['sender'] ==
                                    'user'
                                ? const Radius.circular(10)
                                : const Radius.circular(0),
                            topRight: controller.messageDummy[index]
                                        ['sender'] ==
                                    'user'
                                ? const Radius.circular(0)
                                : const Radius.circular(10),
                            bottomLeft: const Radius.circular(10),
                            bottomRight: const Radius.circular(10),
                          ),
                        ),
                        child: controller.messageDummy[index]['message'] != null
                            ? Text(
                                controller.messageDummy[index]['message'] ?? '',
                                style: TextStyle(
                                  color: controller.messageDummy[index]
                                              ['sender'] ==
                                          'user'
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 14,
                                ),
                              )
                            : Column(
                                children: [
                                  const SizedBox(height: 10),
                                  Container(
                                    width: 200,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.location_on,
                                        color: ColorConfig.primaryColor,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 200,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 10,
                                    ),
                                    decoration: const BoxDecoration(
                                      color: ColorConfig.primaryColorLight,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5),
                                      ),
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "Berbagi Lokasi",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  InkWell(
                                    onTap: () {
                                      controller.sendMessage();
                                    },
                                    child: const Text(
                                      "Berhenti Berbagi",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                ],
                              ),
                      ),
                    ),
                  );
                },
              );
            }),
          ),
          Obx(() {
            if (!controller.isShowAttachment.value) {
              return const SizedBox();
            }
            return InkWell(
              onTap: () {
                controller.showAttachment();
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: AnimatedContainer(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 25),
                        duration: const Duration(milliseconds: 300),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              blurRadius: 10,
                              spreadRadius: 5,
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            controller.menuAttachment.length,
                            (index) {
                              return IconAttachment(
                                onTap: () {
                                  print(controller.menuAttachment[index]
                                      ['title']);
                                },
                                icon: Icon(
                                  controller.menuAttachment[index]['icon']
                                      as IconData,
                                  size: 20,
                                  color: ColorConfig.primaryColor,
                                ),
                                title: controller.menuAttachment[index]['title']
                                    .toString(),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          })
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller.messageController,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  prefixIcon: IconButton(
                    icon: const Icon(
                      Icons.add,
                      color: ColorConfig.primaryColor,
                    ),
                    onPressed: () {
                      controller.showAttachment();
                    },
                  ),
                  hintText: 'Type a message',
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0.5,
                      color: ColorConfig.primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15),
            InkWell(
              onTap: () {
                controller.sendMessage();
              },
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: ColorConfig.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.send,
                  color: Colors.white,
                  size: 19,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IconAttachment extends StatelessWidget {
  final Function onTap;
  final Widget icon;
  final String title;
  const IconAttachment({
    super.key,
    required this.onTap,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Column(
        children: [
          Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: icon),
          const SizedBox(height: 3),
          Text(
            title,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
