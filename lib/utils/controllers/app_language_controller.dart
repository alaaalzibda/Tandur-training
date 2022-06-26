import 'dart:ui';

import '../../general_exports.dart';

class AppLanguageController extends GetxController {
  String appLocale = window.locale.toString().split('_')[0];
  LocalStorage localStorage = LocalStorage();

  @override
  Future<void> onInit() async {
    super.onInit();
    final String? languageCode =
        await localStorage.getFromStorage(key: languageKey);
    appLocale = languageCode ?? appLocale;
    consoleLog('\x1B[33m App Language: $appLocale');
    Get.updateLocale(Locale(appLocale.substring(0, 2)));
    update();
  }

  void changeLanguage(dynamic selectedLanguage, {dynamic onLanguageUpdated}) {
    appLocale = selectedLanguage;
    Get.updateLocale(Locale(appLocale.substring(0, 2))).then((dynamic value) {
      if (onLanguageUpdated != null) {
        onLanguageUpdated();
      }
      update();
    });
  }

  void storeLanguageKey(String selectedLanguage) {
    localStorage.saveToStorage(key: languageKey, value: selectedLanguage);
  }
}
