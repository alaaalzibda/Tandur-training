
import 'dart:async';

import '../../general_exports.dart';

class SplashScreenController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    Timer(
      const Duration(seconds: 5),
          () => Get.offNamed(routeSignUp),
    );
  }
}