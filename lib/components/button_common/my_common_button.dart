import 'package:flutter_svg/svg.dart';

import '../../general_exports.dart';

class MyCommonButton extends StatelessWidget {
  MyCommonButton(
      {Key? key,
      this.title,
      this.backgroundColor,
      this.fontWeight,
      this.borderColor,
      this.path})
      : super(key: key);
  String? title;
  double? width;
  int? backgroundColor;
  int? borderColor;
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
          fontSize: fontH3,
          fontColor: AppColors.white,
          fontWeight: fontWeight,
        ),
        rightChild: path != null
            ? Padding(
                padding: EdgeInsets.only(
                  right: DEVICE_WIDTH * 0.02,
                ),
                child: SvgPicture.asset(
                  path!,
                  width: DEVICE_WIDTH * 0.064,
                  height: DEVICE_WIDTH * 0.029,
                ),
              )
            : const Center(),
      ),
    );
  }
}
