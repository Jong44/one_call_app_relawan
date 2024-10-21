import 'package:get/get.dart';
import 'package:one_call_login_register/app/controller/main/index_main_controller.dart';

class IndexMainBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(IndexMainController());
  }
}
