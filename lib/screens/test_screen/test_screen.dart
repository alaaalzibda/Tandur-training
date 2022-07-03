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

              SizedBox(height: DEVICE_HEIGHT * 0.1),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: DEVICE_WIDTH * 0.05),
                child: MyTextField(
                  hintText: 'enter_your_email',
                  controller: TextEditingController(),
                  obscureText: false,
                  colorContent: Color(AppColors.black),
                  pathSuffixIcon: iconWarningPassword,
                  path: iconEmail,
                ),
              ),

              SizedBox(height: DEVICE_HEIGHT * 0.1),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Center(
                  child: CommonTextInput(
                    style: CommonTextInputModel(
                      hint: 'enter_your_email'.tr,
                      radius: 8,
                      prefixIcon: CommonIcon(
                          containerStyle: CommonContainerModel(
                            paddingLeft: 0.03,
                            paddingRight: 0.01,
                          ),
                          path: Icons.alternate_email_outlined),
                    ),
                    //leftChild: const Icon(Icons.alternate_email),
                  ),
                ),
              ),
              Center(
                child: CommonTextInput(
                  style: CommonTextInputModel(
                    hint: 'enter_your_password'.tr,
                    prefixIcon: CommonIcon(
                        containerStyle: CommonContainerModel(
                          paddingLeft: 0.03,
                          paddingRight: 0.01,
                        ),
                        path: Icons.lock),
                  ),
                  //leftChild: const Icon(Icons.alternate_email),
                ),
              ),
              Center(
                child: CommonTextInput(
                  style: CommonTextInputModel(
                    hint: 'search'.tr,
                    prefixIcon: CommonIcon(
                        containerStyle: CommonContainerModel(
                          paddingLeft: 0.03,
                          paddingRight: 0.01,
                        ),
                        path: Icons.search,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
