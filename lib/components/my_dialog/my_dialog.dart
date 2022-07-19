import 'package:flutter_svg/svg.dart';

import '../../general_exports.dart';

class MyDialog extends StatelessWidget {
  MyDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: CommonText(
        text: 'title_dialog'.tr,
        style: appTextStyles.h4StyleBlack(),
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          itemAction(
            iconsIcSad,
            'not_enough'.tr,
            color: Color(
              AppColors.red,
            ),
            style: appTextStyles.h5StyleRed(),
          ),
          itemAction(
            iconsIcNeutral,
            'normal'.tr,
            color: Color(
              AppColors.primary,
            ),
            style: appTextStyles.h5StylePrimary(),
          ),
          itemAction(
            iconsIcHappy,
            'satisfied'.tr,
            color: Color(
              AppColors.primary,
            ),
            style: appTextStyles.h5StylePrimary(),
          ),
        ],
      ),
      actions: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              MyCommonButton(
                title: 'done'.tr,
                style: defaultButtonStyles.defaultButtonStyle(
                  backgroundColor: AppColors.brown,
                ),
              ),
              SizedBox(
                height: DEVICE_HEIGHT * 0.05,
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget itemDialogWidget(
      String path,
      String text, {
        Color? color,
        CommonTextModel? style,
      }) {
    return Column(
      children: <Widget>[
        SvgPicture.asset(
          path,
          color: color ??
              Color(
                AppColors.black,
              ),
        ),
        SizedBox(
          height: DEVICE_HEIGHT * 0.01,
        ),
        CommonText(
          text: text.tr,
          style: style ?? appTextStyles.h5StyleBlack(),
        ),
      ],
    );
  }

  Widget itemAction(String path, String text,
      {Color? color, CommonTextModel? style}) {
    return GetBuilder<DialogController>(
        init: DialogController(),
        global: false,
        builder: (DialogController controller) {
          return GestureDetector(
            onTap: () => controller.isSelected(),
            child: controller.dialogController
                ? itemDialogWidget(
              path,
              text,
              color: color,
              style: style,
            )
                : itemDialogWidget(
              path,
              text,
            ),
          );
        });
  }
}