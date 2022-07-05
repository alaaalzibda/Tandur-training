// import 'package:package_info_plus/package_info_plus.dart';

import '../../general_exports.dart';

class SignUpController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  String version = '';

  bool passwordEmpty() {
    if (passwordController.value.text.isEmpty) {
      return true;
    }
    return false;
  }
}
