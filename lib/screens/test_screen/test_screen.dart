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
                MyCommonButton(
                  title: 'login'.tr,
                  style: defaultButtonStyles.whiteBorderButton(),
                ),
                SizedBox(
                  height: DEVICE_HEIGHT * 0.02,
                ),
                MyCommonButton(
                  title: 'login'.tr,
                ),
                SizedBox(
                  height: DEVICE_HEIGHT * 0.02,
                ),
                MyCommonButton(
                  title: 'login'.tr,
                  path: iconsIcTandurLogo,
                  style: defaultButtonStyles.redBackgroundButtonStyle(),
                ),
                SizedBox(
                  height: DEVICE_HEIGHT * 0.02,
                ),
                MyCommonButton(
                  title: 'login'.tr,
                  style: defaultButtonStyles.fullWidthButtonStyle(),
                  onPress: () {
                    consoleLog('onPress');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
