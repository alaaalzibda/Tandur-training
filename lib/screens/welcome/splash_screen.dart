import '../../general_exports.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
        init: SplashScreenController(),
        builder: (_) {
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
                    style: defaultTextStyles.h2StyleWhite()),
              ),
            ),
          ),
        ),
      );
    });
  }
}
