import 'package:get/get.dart';
import 'package:one_call/app/services/login_service.dart';

class AuthController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  var isLoading = false.obs;

  void setEmail(String value) {
    email.value = value;
  }

  void setPassword(String value) {
    password.value = value;
  }

  void login() async {
    isLoading.value = true;
    final responseSignIn = await LoginService().signInWithEmailAndPassword(
      emailAddress: email.value,
      password: password.value,
    );
    if (responseSignIn['status']) {
      Get.offAllNamed('/');
    } else {
      Get.snackbar('Error', responseSignIn['message']);
    }
    isLoading.value = false;
  }
}
