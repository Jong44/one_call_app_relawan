import 'package:get/get.dart';
import 'package:one_call/app/controller/feature/chat_controller.dart';

class ChatBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ChatController());
  }
}
