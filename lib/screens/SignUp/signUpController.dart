import 'package:package_info_plus/package_info_plus.dart';

import '../../general_exports.dart';

class SignUpController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  final AppLanguageController languageController =
      Get.find<AppLanguageController>();
  String version = '';

  @override
  void onReady() {
    super.onReady();
    // getLanguages();
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) => {
          version = packageInfo.version,
          update(),
        });
    languageController.changeLanguage(languageController.appLocale,
        onLanguageUpdated: () {
      update();
    });
  }

  bool passwordEmpty() {
    if (passwordController.value.text.isEmpty) {
      return true;
    }
    return false;
  }

  // void passwordChange() {
  //     String password = passwordController.value.text;
  // }
}
