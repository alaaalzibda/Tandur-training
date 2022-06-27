import '../../general_exports.dart';
import 'input_text.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: CommonText(
                text: 'my_profile'.tr,
              ),
            ),
            const Center(
              child: InputText(),
            ),
          ],
        ),
      ),
    );
  }
}
