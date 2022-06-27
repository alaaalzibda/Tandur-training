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
                SizedBox(height: DEVICE_HEIGHT * 0.1),
                CommonButton(
                  buttonStyle: DefaultButtonStyles().defaultSmallButton(),
                  text: 'Login'.tr,
                ),
                SizedBox(height: DEVICE_HEIGHT * 0.02),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: DEVICE_WIDTH * 0.08),
                  child: CommonButton(
                    buttonStyle: DefaultButtonStyles().defaultButtonStyle(),
                    text: 'Login'.tr,
                  ),
                ),
                SizedBox(height: DEVICE_HEIGHT * 0.02),
                MyCommonButton(
                    title: 'Login'.tr,
                    backgroundColor: AppColors.green,
                    fontSize: 18,
                    borderColor: AppColors.black,
                    fontWeight: FontWeight.w600,
                    path: iconsIcEmail),
                SizedBox(
                  height: DEVICE_HEIGHT * 0.02,
                ),
                MyCommonButton(
                  title: 'Login'.tr,
                  backgroundColor: AppColors.green,
                  fontSize: 18,
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
