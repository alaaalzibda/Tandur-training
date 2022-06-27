import 'package:flutter_svg/svg.dart';

import '../../general_exports.dart';

class MyCommonButton extends StatelessWidget {

  MyCommonButton({
    Key? key,
    this.title,
    this.backgroundColor,
    this.fontSize,
    this.fontWeight,
    this.borderColor,
    this.path
  }) : super(key: key);
  String? title;
  double? width;
  int? backgroundColor;
  int? borderColor;
  double? fontSize;
  FontWeight? fontWeight;
  String? path;

  @override
  Widget build(BuildContext context) {
    return CommonButton(
      buttonStyle: CommonButtonStyle(
        containerStyle: CommonContainerModel(
          width: DEVICE_WIDTH,
          height: 0.064,
          borderBottomStyle: BorderStyle.solid,
          borderColor: borderColor,
          borderWidth: 2.5,
          borderRadius: 0.03,
        ),
        style: CommonButtonModel(
          backgroundColor: backgroundColor,
          borderRadius: 8,
        ),
      ),
      child: CommonText(
        text: title,
        style: CommonTextModel(
          fontSize: fontSize,
          fontColor: AppColors.white,
          fontWeight: fontWeight,
        ),
        rightChild: path != null
            ? Padding(
                padding: const EdgeInsets.only(right: 8),
                child: SvgPicture.asset(
                  path!,
                  width: 24,
                  height: 24,
                ),
              )
            : const Center(),
      ),
    );
  }
}
