// ignore_for_file: unnecessary_null_comparison

import '../../general_exports.dart';

class InputText extends StatelessWidget {
  const InputText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerText = TextEditingController();
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: DEVICE_WIDTH, vertical: DEVICE_HEIGHT),
          child: const TextField(
            decoration: InputDecoration(
              prefixIcon: Path != null ? Icon(Icons.alternate_email) : Center(),
              border: OutlineInputBorder(),
              labelText: 'Enter your Email',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: DEVICE_WIDTH, vertical: DEVICE_HEIGHT),
          child: TextField(
            controller: controllerText,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              prefixIcon:
                  Path != null ? const Icon(Icons.lock) : const Center(),
              border: const OutlineInputBorder(),
              labelText: 'Enter your password',
              suffixIcon: controllerText.value.text.isEmpty
                  ? const Icon(Icons.error)
                  : const Icon(Icons.remove_red_eye), //not work's as I want
            ),
            onChanged: (String text) {},
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: DEVICE_WIDTH, vertical: DEVICE_HEIGHT),
          child: const TextField(
            decoration: InputDecoration(
              prefixIcon: Path != null ? Icon(Icons.search) : Center(),
              border: OutlineInputBorder(),
              hintText: 'Search',
            ),
          ),
        ),
      ],
    );
  }
}
