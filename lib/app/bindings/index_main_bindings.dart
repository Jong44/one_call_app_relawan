import 'package:get/get.dart';
import 'package:one_call/app/controller/main/location_controller.dart';
import 'package:one_call/app/controller/main/notifications_controller.dart';
import 'package:one_call/app/controller/main/index_main_controller.dart';

class IndexMainBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IndexMainController());
    Get.lazyPut(() => NotificationsController());
    Get.lazyPut(() => LocationController());
  }
}
