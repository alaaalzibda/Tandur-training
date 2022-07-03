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
                      iconEmail,
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
                      iconWarningPassword,
                      secure: true,
                    ),
                    containerStyle:
                        defaultTextInputStyles.descriptionContainerModel(),
                  ),
                  //leftChild: const Icon(Icons.alternate_email),
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
                      iconWarningPassword,
                    ),
                    containerStyle:
                        defaultTextInputStyles.descriptionContainerModel(),
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
