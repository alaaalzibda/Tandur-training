import 'dart:async';

import '../../general_exports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
          () => Get.offNamed(routeHome),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColors.primary),
      body: Center(
        child: CommonContainer(
          child: CommonText(
            style: CommonTextModel(
              backgroundColor: AppColors.white,
              prefixIcon: CommonIcon(
                path: iconLogo,
                color: AppColors.white,
              ),
            ),
            bottomChild: Padding(
              padding: EdgeInsets.only(top: DEVICE_HEIGHT * 0.02),
              child: CommonText(
                text: 'app_name'.tr,
                style: defaultTextStyles.h2StyleWhite()
              ),
            ),
          ),
        ),
      ),
    );
  }
}
