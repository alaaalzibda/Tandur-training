import '../../general_exports.dart';

class SignUpFormController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  bool isPasswordEmpty = false;

  void passwordEmpty() {
    if (passwordController.value.text.isEmpty) {
      isPasswordEmpty = true;
    } else {
      isPasswordEmpty = false;
    }
    update();
  }
}
