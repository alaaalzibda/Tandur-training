import '../../../general_exports.dart';
import 'signup_controller.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
        init: SignUpController(),
        builder: (_) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Color(AppColors.primary),
              body: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: DEVICE_HEIGHT * 0.01,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          DEVICE_WIDTH * 0.1,
                          DEVICE_HEIGHT * 0.15,
                          DEVICE_WIDTH * 0.1,
                          DEVICE_HEIGHT * 0.1),
                      child: Row(
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
                    ),
                    CommonText(
                      containerStyle: CommonContainerModel(
                        paddingRight: 0.7,
                      ),
                      text: 'email'.tr,
                      style: CommonTextModel(
                        fontSize: fontH5,
                        fontWeight: FontWeight.bold,
                        fontColor: AppColors.white,
                      ),
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
                          containerStyle: defaultTextInputStyles
                              .descriptionContainerModel(),
                        ),
                      ),
                    ),
                    CommonText(
                      containerStyle: CommonContainerModel(
                        paddingRight: 0.65,
                      ),
                      text: 'fullName'.tr,
                      style: CommonTextModel(
                        fontSize: fontH5,
                        fontWeight: FontWeight.bold,
                        fontColor: AppColors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: DEVICE_WIDTH * 0.1,
                          vertical: DEVICE_HEIGHT * 0.01),
                      child: Center(
                        child: CommonTextInput(
                          style: defaultTextInputStyles.textFieldInputStyle(
                            'enter_your_name'.tr,
                            iconsIcPerson,
                          ),
                          containerStyle: defaultTextInputStyles
                              .descriptionContainerModel(),
                        ),
                      ),
                    ),
                    CommonText(
                      containerStyle: CommonContainerModel(
                        paddingRight: 0.5,
                      ),
                      text: 'confirm_your_password'.tr,
                      style: CommonTextModel(
                        fontSize: fontH5,
                        fontWeight: FontWeight.bold,
                        fontColor: AppColors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: DEVICE_WIDTH * 0.1,
                          vertical: DEVICE_HEIGHT * 0.01),
                      child: Center(
                        child: CommonTextInput(
                          textEditingController:
                              Get.put(SignUpController()).passwordController,
                          onChanged: () {},
                          style: Get.put(SignUpController()).isPasswordEmpty
                              ? defaultTextInputStyles.textFieldInputStyle(
                                  'enter_your_password',
                                  iconPassword,
                                  secure: true,
                                  passwordWrong: iconsIcWarningPassword,
                                )
                              : defaultTextInputStyles.textFieldInputStyle(
                                  'enter_your_password',
                                  iconPassword,
                                  secure: true,
                                ),
                          containerStyle: defaultTextInputStyles
                              .descriptionContainerModel(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: DEVICE_HEIGHT * 0.1,
                    ),
                    MyCommonButton(
                      title: 'signUp'.tr,
                      style:
                          defaultButtonStyles.fullWidthWhiteBorderButtonStyle(),
                      onPress: () {
                        Get.put(SignUpController()).passwordEmpty();
                      },
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
          );
        });
  }
}
