import 'package:get/get.dart';
import 'package:one_call/app/controller/auth/auth_controller.dart';

class AuthBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() =>AuthController());
  }
}
