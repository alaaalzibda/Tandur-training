import '../../components/button_common/my_common_button.dart';
import '../../components/text_input/my_text_input.dart';
import '../../general_exports.dart';
// import 'input_text.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: DEVICE_HEIGHT * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: DEVICE_WIDTH * 0.1,
                    vertical: DEVICE_HEIGHT * 0.01),
                child: Center(
                  child: CommonTextInput(
                    style: defaultTextInputStyles.textFieldInputStyle(
                      'enter_your_email',
                      iconsIcEmail,
                    ),
                    containerStyle:
                    defaultTextInputStyles.descriptionContainerModel(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: DEVICE_WIDTH * 0.1,
                    vertical: DEVICE_HEIGHT * 0.01),
                child: Center(
                  child: CommonTextInput(
                    style: defaultTextInputStyles.textFieldInputStyle(
                      'enter_your_password',
                      iconsVector,
                      secure: true,
                    ),
                    containerStyle:
                    defaultTextInputStyles.descriptionContainerModel(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: DEVICE_WIDTH * 0.1,
                    vertical: DEVICE_HEIGHT * 0.01),
                child: Center(
                  child: CommonTextInput(
                    style: defaultTextInputStyles.textFieldInputStyle(
                      'search',
                      iconsIcSearch,
                    ),
                    containerStyle:
                    defaultTextInputStyles.descriptionContainerModel(),
                  ),
                ),
              ),
              MyDialog(),
              Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: DEVICE_HEIGHT * 0.01,
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
            ],
          ),
        ),
      ),
    );
  }
}