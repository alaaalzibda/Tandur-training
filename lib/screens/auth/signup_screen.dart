import '../../general_exports.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
                    imageEmailSubmitLogo,
                    fit: BoxFit.cover,
                  ),
                  _mySpace(
                    height: 0.059,
                  ),
                  CommonText(
                    text: 'lets_farm'.tr,
                    style: defaultTextStyles.headerStyle(),
                  ),
                  _mySpace(),
                  CommonText(
                    text: 'description_sign_up'.tr,
                    style:
                        defaultTextStyles.h3StyleWhite().copyWith(fontSize: 18),
                  ),
                  _mySpace(),

                  // TODO: This is code for Lama  ==> TextInput
                  CommonText(
                    text: 'email'.tr,
                    style: defaultTextStyles
                        .h4StyleWhite()
                        .copyWith(textAlign: TextAlign.start),
                    bottomChild: Padding(
                      padding: EdgeInsets.only(top: DEVICE_WIDTH * 0.008),
                      child: CommonTextInput(),
                    ),
                  ),
                  ////////////////////////////////////////////////////////////////

                  SizedBox(
                    height: DEVICE_HEIGHT * 0.059,
                  ),
                  SizedBox(
                    width: DEVICE_WIDTH,
                    child: MyCommonButton(
                      title: 'join_now'.tr,
                      style: defaultButtonStyles.whiteBorderButton(),
                    ),
                  ),
                  _mySpace(),
                  SizedBox(
                    width: DEVICE_WIDTH,
                    child: MyCommonButton(
                      title: 'enter'.tr,
                      style: defaultButtonStyles.defaultButtonStyle()
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Widget _mySpace({double? height = 0.029}) {
    return SizedBox(
      height: DEVICE_HEIGHT * height!,
    );
  }
}
