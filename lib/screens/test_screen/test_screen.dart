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
                  style: CommonTextInputModel(
                    hint: 'Enter your Email'.tr,
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
              Center(
                child: CommonTextInput(
                  style: CommonTextInputModel(
                    hint: 'Enter your password'.tr,
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
                    hint: 'Search'.tr,
                    prefixIcon: CommonIcon(
                        containerStyle: CommonContainerModel(
                          paddingLeft: 0.03,
                          paddingRight: 0.01,
                        ),
                        path: Icons.search),
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
