import 'package:get/get.dart';
import 'package:one_call/app/controller/feature/group_chat_controller.dart';

class GroupChatBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => GroupChatController());
  }
}
