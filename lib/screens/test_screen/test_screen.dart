import '../../general_exports.dart';
// import 'input_text.dart';

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
                text: 'Enter your Email'.tr,
                rightChild: const Icon(Icons.alternate_email),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: DEVICE_WIDTH, vertical: DEVICE_HEIGHT),
              child: CommonText(
                text: 'Enter your Password'.tr,
                rightChild: const Icon(Icons.lock),
                leftChild: TextEditingController().value.text.isEmpty
                    ? const Icon(Icons.error)
                    : const Center(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: DEVICE_WIDTH, vertical: DEVICE_HEIGHT),
              child: CommonText(
                text: 'Search'.tr,
                rightChild: const Icon(Icons.search),
              ),
            ),
            // const Center(
            //   child: InputText(),
            // ),
          ],
        ),
      ),
    );
  }
}
