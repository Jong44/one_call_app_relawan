import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:get/get.dart';

import 'package:one_call/app/config/color_config.dart';
import 'package:one_call/app/routes/routes_name.dart';

class NotificationsService {
  NotificationsService._();

  factory NotificationsService() => _instance;
  static final NotificationsService _instance = NotificationsService._();

  Future<void> configuration() async {
    await AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelKey: 'basic_channel',
          channelName: 'Basic Notifications',
          channelDescription: 'Notification channel for basic tests',
          defaultColor: ColorConfig.primaryColor,
          ledColor: ColorConfig.primaryColor,
          importance: NotificationImportance.Max,
        ),
      ],
      debug: true,
    );
  }

  void handleNotificationAction(ReceivedAction receivedAction) {
    if (receivedAction.buttonKeyPressed == 'BANTU') {
      // Navigate to a specific page
      print('click');
      Get.toNamed(RoutesName.emergencyDetail); // Using GetX for navigation
    } else if (receivedAction.buttonKeyPressed == 'TOLAK') {
      // Do nothing, just dismiss the notification
      print('User disagreed');
    } else {
      Get.toNamed(RoutesName.emergencyDetail);
    }
  }

  void listenToAction() {
    AwesomeNotifications().setListeners(
      onActionReceivedMethod: (receivedAction) async {
        handleNotificationAction(receivedAction);
      },
    );
  }
}
