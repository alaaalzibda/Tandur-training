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
              Center(
                child: CommonTextInput(
                  style: defaultTextInputStyles.textFieldInputStyle(
                      'Enter your Email', Icons.alternate_email_outlined),
                ),
              ),
              Center(
                child: CommonTextInput(
                  style: defaultTextInputStyles.textFieldInputStyle(
                      'Enter your password', Icons.lock,
                      secure: true),
                ),
                //leftChild: const Icon(Icons.alternate_email),
              ),
              Center(
                child: CommonTextInput(
                  style: defaultTextInputStyles.textFieldInputStyle(
                      'search', Icons.search),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
