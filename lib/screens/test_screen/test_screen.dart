import '../../general_exports.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: CommonText(
            text: 'my_profile'.tr,
          ),
        ),
      ),
    );
  }
}
