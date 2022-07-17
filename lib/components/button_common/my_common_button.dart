import 'package:flutter_svg/svg.dart';

import '../../general_exports.dart';

class MyCommonButton extends StatelessWidget {
  MyCommonButton({
    Key? key,
    this.style,
    this.title,
    this.path,
    this.onPress,
  }) : super(key: key);

  CommonButtonStyle? style;
  String? title;
  String? path;
  Function? onPress;

  @override
  Widget build(BuildContext context) {
    return CommonButton(
      buttonStyle: style ?? defaultButtonStyles.defaultButtonStyle(),
      onPress: () {
        onPress?.call();
      },
      child: CommonText(
        text: title,
        style: CommonTextModel(
          fontSize: fontH3,
          fontColor: AppColors.white,
          fontWeight: FontWeight.w600,
        ),
        leftChild: path != null
            ? Padding(
                padding: EdgeInsets.only(
                  right: DEVICE_WIDTH * 0.02,
                ),
                child: SvgPicture.asset(
                  path!,
                  width: DEVICE_WIDTH * 0.064,
                  height: DEVICE_WIDTH * 0.029,
                  color: Color(AppColors.white),
                ),
              )
            : const Center(),
      ),
    );
  }
}
