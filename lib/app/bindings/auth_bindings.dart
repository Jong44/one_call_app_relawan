import 'package:get/get.dart';
import 'package:one_call_login_register/app/controller/auth/auth_controller.dart';

class AuthBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
  }
}
