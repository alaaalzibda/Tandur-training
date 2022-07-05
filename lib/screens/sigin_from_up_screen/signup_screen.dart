import '../../../general_exports.dart';

class SignUpFromScreen extends StatelessWidget {
  const SignUpFromScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
        init: SignUpController(),
        builder: (SignUpController controller) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Color(AppColors.primary),
              body: SingleChildScrollView(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: DEVICE_WIDTH * 0.08),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: DEVICE_HEIGHT * 0.14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CommonText(
                            text: 'info'.tr,
                            style: CommonTextModel(
                              textAlign: TextAlign.left,
                              fontSize: fontH2,
                              fontWeight: FontWeight.bold,
                              fontColor: AppColors.white,
                            ),
                          ),
                          CommonContainer(
                            child: CommonText(
                              style: CommonTextModel(
                                backgroundColor: AppColors.white,
                                prefixIcon: CommonIcon(
                                  path: iconSignUpLogo,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: DEVICE_HEIGHT * 0.06,
                      ),
                      _textInputText('email'),
                      Center(
                        child: CommonTextInput(
                          style: defaultTextInputStyles.textFieldInputStyle(
                            'enter_your_email',
                            iconsIcEmail,
                          ),
                          containerStyle: defaultTextInputStyles
                              .descriptionContainerModel(),
                        ),
                      ),
                      SizedBox(
                        height: DEVICE_HEIGHT * 0.029,
                      ),
                      _textInputText('full_name'),
                      Center(
                          child: CommonTextInput(
                            style: defaultTextInputStyles.textFieldInputStyle(
                              'enter_your_name'.tr,
                              iconsIcPerson,
                            ),
                            containerStyle: defaultTextInputStyles
                                .descriptionContainerModel(),
                          ),
                        ),
                      SizedBox(
                        height: DEVICE_HEIGHT * 0.029,
                      ),
                      _textInputText('confirm_your_password'),
                      Center(
                          child: CommonTextInput(
                            textEditingController:
                                controller.passwordController,
                            onChanged: () {},
                            style: defaultTextInputStyles.textFieldInputStyle(
                              'enter_your_password',
                              iconPassword,
                              secure: true,
                              passwordWrong: iconsIcWarningPassword,
                              checkPassword: controller.isPasswordEmpty,
                            ),
                            containerStyle: defaultTextInputStyles
                                .descriptionContainerModel(),
                          ),
                        ),

                      SizedBox(
                        height: DEVICE_HEIGHT * 0.15,
                      ),
                      MyCommonButton(
                        title: 'sign_up'.tr,
                        style: defaultButtonStyles
                            .fullWidthWhiteBorderButtonStyle(),
                        onPress: () {
                          controller.passwordEmpty();
                        },
                      ),
                      SizedBox(
                        height: DEVICE_HEIGHT * 0.029,
                      ),
                      MyCommonButton(
                        title: 'return'.tr,
                        style: defaultButtonStyles.fullWidthButtonStyle(),
                        onPress: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
  Widget _textInputText(String text){
    return Align(
      alignment: Alignment.centerLeft,
      child: CommonText(
        text: text.tr,
        style: CommonTextModel(
          fontSize: fontH5,
          fontWeight: FontWeight.bold,
          fontColor: AppColors.white,
        ),
      ),
    );
  }
}
