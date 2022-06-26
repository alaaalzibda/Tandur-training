import 'package:common_ui_toolkit/index.dart';

import '../../screens/my_app/index.dart';

// import 'package:tachyon_driver/components/common_label/style.dart';

class CommonTitle extends StatelessWidget {
  const CommonTitle({
    this.title,
    this.value,
    this.textAlign = TextAlign.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    Key? key,
  }) : super(key: key);

  final String? title;
  final String? value;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CommonText(
          style: appTextStyles.h3MediumStyleBlack(),
          text: title,
        ),
        const SizedBox(
          height: 5,
        ),
        CommonText(
          style: appTextStyles.h2Grey(),
          text: value,
        ),
      ],
    );
  }
}
