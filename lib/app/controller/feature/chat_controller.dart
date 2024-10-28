import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  var messageDummy = [
    {
      'message': 'Hello, how are you?',
      'sender': 'user',
    },
    {
      'message': 'I am fine, thank you',
      'sender': 'receiver',
    },
    {
      'message': 'What are you doing?',
      'sender': 'user',
    },
    {
      'message': 'I am working',
      'sender': 'receiver',
    },
    {
      'message': 'Where are you now?',
      'sender': 'user',
    },
    {
      'attachment': 'location',
      'sender': 'user',
    }
  ].obs;

  var menuAttachment = [
    {
      'icon': Icons.camera_alt,
      'title': 'Camera',
    },
    {
      'icon': Icons.image,
      'title': 'Gallery',
    },
    {
      'icon': Icons.location_on,
      'title': 'Location',
    },
    {
      'icon': Icons.insert_drive_file,
      'title': 'Document',
    },
  ];

  var messageController = TextEditingController();
  var isShowAttachment = false.obs;

  void sendMessage() {
    messageDummy.add({
      'message': messageController.text,
      'sender': 'user',
    });
    update();
    messageController.clear();
    receiveMessage();
  }

  void showAttachment() {
    isShowAttachment.value = !isShowAttachment.value;
  }

  void receiveMessage() {
    messageDummy.add({
      'message': 'I am fine, thank you',
      'sender': 'receiver',
    });
    update();
  }
}