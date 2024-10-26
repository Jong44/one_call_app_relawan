import 'package:get/get.dart';

class AuthController extends GetxController {
  RxBool login = false.obs;

  void loginValid() {
    login = (!login.value).obs;
    update();
  }
}
