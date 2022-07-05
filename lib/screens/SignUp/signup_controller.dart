// import 'package:package_info_plus/package_info_plus.dart';

import '../../general_exports.dart';

class SignUpController extends GetxController {
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
