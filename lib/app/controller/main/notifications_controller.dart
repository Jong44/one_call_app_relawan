import 'package:get/get.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:one_call/app/config/color_config.dart';

class NotificationsController extends GetxController {
  final _awesomeNotifications = AwesomeNotifications();
  
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _ensureNotifications();
  }

  void _ensureNotifications() {
    _awesomeNotifications.isNotificationAllowed().then(
      (isAllowed) {
        if (!isAllowed) {
          // Asking for permission
          AwesomeNotifications().requestPermissionToSendNotifications();
        }
      },
    );
  }

  void triggeredEmergencyNotifications({required String url}) {
    _awesomeNotifications.createNotification(
      content: NotificationContent(
        id: 10,
        channelKey: 'basic_channel',
        title: 'Seseorang butuh bantuanmu!',
        body: 'Mijen, Prambanan Kidul, Kec. Kaliwungu',
        autoDismissible: false,
        criticalAlert: true,
        locked: true,
        bigPicture: url, // Add big picture URL here
        notificationLayout: NotificationLayout.BigPicture,
      ),
      actionButtons: [
        NotificationActionButton(
            key: 'BANTU', label: 'Bantu', color: ColorConfig.primaryColor),
        NotificationActionButton(
            key: 'TOLAK', label: 'Tolak', color: ColorConfig.primaryColor),
      ],
    );
  }
}
