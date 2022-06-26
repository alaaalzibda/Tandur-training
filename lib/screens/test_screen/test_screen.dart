import '../../general_exports.dart';

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

class InputText extends StatelessWidget {
  const InputText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
              decoration: InputDecoration(
            prefixIcon: Icon(Icons.alternate_email),
            border: OutlineInputBorder(),
            hintText: 'Enter your Email',
          )),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
              decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock_outline_rounded),
            border: OutlineInputBorder(),
            hintText: 'Enter your password',
            //buildIcons(),
          )),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
              decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
            hintText: 'Search',
          )),
        ),
      ],
    );
  }
  // String? buildIcons({IconData ifEmpty = Icons.error}){
  //   if(TextEditingController().value.text.isEmpty){
  //     //ifEmpty;
  //     return 'can not be empty';
  //       }
  //   return null;
  // }
}
