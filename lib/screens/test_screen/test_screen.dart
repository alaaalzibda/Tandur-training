import '../../components/button_common/my_common_button.dart';
import '../../general_exports.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: DEVICE_HEIGHT * 0.1,
                ),
                CommonButton(
                  buttonStyle: DefaultButtonStyles().defaultSmallButton(),
                  text: 'login'.tr,
                ),
                SizedBox(
                  height: DEVICE_HEIGHT * 0.02,
                ),
                CommonButton(
                  buttonStyle: DefaultButtonStyles().defaultButtonStyle(),
                  text: 'login'.tr,
                ),
                SizedBox(
                  height: DEVICE_HEIGHT * 0.02,
                ),
                MyCommonButton(
                  title: 'login'.tr,
                  backgroundColor: AppColors.primary,
                  borderColor: AppColors.black,
                  fontWeight: FontWeight.w600,
                  path: iconsIcEmail,
                ),
                SizedBox(
                  height: DEVICE_HEIGHT * 0.02,
                ),
                MyCommonButton(
                  title: 'login'.tr,
                  backgroundColor: AppColors.primary,
                  borderColor: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
