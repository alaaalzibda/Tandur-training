import 'package:flutter/material.dart';

import '../../general_exports.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColors.primary),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: DEVICE_WIDTH * 0.08),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _mySpace(
                  height: 0.192,
                ),
                Image.asset(
                  imageLoginLogo,
                  fit: BoxFit.cover,
                ),
                _mySpace(
                  height: 0.059,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: CommonText(
                    text: 'login_with_email'.tr,
                    style: defaultTextStyles.h2StyleWhite().copyWith(fontWeight: FontWeight.w600,),
                  ),
                ),
                _mySpace(
                  height: 0.02,
                ),
                _formTextInput(
                    title: 'email'.tr,
                    textKey: 'enter_your_email',
                    path: iconsIcEmail),
                _mySpace(
                  height: 0.02,
                ),
                _formTextInput(
                    title: 'password'.tr,
                    textKey: 'enter_your_password',
                    path: iconsIcPassword),
                SizedBox(
                  height: DEVICE_HEIGHT * 0.07,
                ),
                SizedBox(
                  width: DEVICE_WIDTH,
                  child: MyCommonButton(
                    title: 'enter'.tr,
                    style: defaultButtonStyles.whiteBorderButton(),
                  ),
                ),
                _mySpace(),
                SizedBox(
                  width: DEVICE_WIDTH,
                  child: MyCommonButton(
                      title: 'return'.tr,
                      style: defaultButtonStyles.defaultButtonStyle()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _formTextInput({String? title, String? textKey, String? path}) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: CommonText(
            text: title,
            style: defaultTextStyles.h4StyleWhite(),
          ),
        ),
        CommonTextInput(
          style: defaultTextInputStyles.textFieldInputStyle(
            textKey!,
            path!,
            secure: true,
          ),
          containerStyle: defaultTextInputStyles.descriptionContainerModel(),
        ),
      ],
    );
  }

  Widget _mySpace({double? height = 0.029}) {
    return SizedBox(
      height: DEVICE_HEIGHT * height!,
    );
  }
}
