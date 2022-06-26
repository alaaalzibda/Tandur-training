import 'package:flutter_svg/parser.dart';
import 'package:flutter_svg/svg.dart';

import '../../general_exports.dart';
import '../../generated/assets.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20),

                // TODO: the color used to test
                commonButton(
                    title: argTextButton,
                    width: 0.86,
                    height: 0.064,
                    isIcon: true,
                    backgroundColor: AppColors.green,
                    fontSize: 18,
                    borderColor: AppColors.black,
                    fontWeight: FontWeight.w600,
                    path: Assets.iconsIcEmail),
                const SizedBox(
                  height: 10,
                ),
                commonButton(
                    title: argTextButton,
                    width: 0.86,
                    height: 0.064,
                    isIcon: false,
                    backgroundColor: AppColors.green,
                    fontSize: 18,
                    borderColor: AppColors.black,
                    fontWeight: FontWeight.w600,),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// This function take more parameter
  /// @author omar ezzdeen
  /// @return CommonButton Widget
  ///
  /// @param1 title this param is required
  /// @param2 width this param is required
  /// @param3 height this param is required
  /// @param4 isIcon this param is optional
  /// @param5 backgroundColor this param is optional
  /// @param6 borderColor this param is optional
  /// @param7 fontSize this param is optional
  /// @param8 fontWeight this param is optional
  /// @param9 path this param is optional
  CommonButton commonButton({
    required String title,
    required double width,
    required double height,
    required bool isIcon,
    int? backgroundColor,
    int? borderColor,
    double? fontSize,
    FontWeight? fontWeight,
    String? path,
  }) {
    return CommonButton(
      buttonStyle: CommonButtonStyle(
        containerStyle: CommonContainerModel(
          width: width,
          height: height,
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
      child: isIcon == true
          ? CommonText(
              text: title,
              style: CommonTextModel(
                fontSize: fontSize,
                fontColor: AppColors.white,
                fontWeight: fontWeight,
                fontFamily: fontFamily
              ),
              rightChild: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: SvgPicture.asset(
                  path!,
                  width: 24,
                  height: 24,
                ),
              ),
            )
          : CommonText(
              text: title,
              style: CommonTextModel(
                fontSize: fontSize,
                fontColor: AppColors.white,
                fontWeight: fontWeight,
                  fontFamily: fontFamily
              ),
            ),
    );
  }
}
