import '../../general_exports.dart';

class DefaultTextInputStyles {
  CommonTextInputModel defaultTextInputModel({dynamic errorIcon}) =>
      CommonTextInputModel(
        fontSize: fontH4,
      );

  CommonTextInputModel descriptionTextInputModel() => CommonTextInputModel(
        fontSize: fontH4,
        minLines: 4,
        hint: '',
        withBorderSide: false,
      );

  CommonContainerModel descriptionContainerModel() => CommonContainerModel(
        height: 0.064,
        borderColor: AppColors.grey,
        borderRadius: 0.025,
        backgroundColor: AppColors.grey,
      );

  CommonTextInputModel textFieldInputStyle(
    String hint,
    String icon, {
    bool? secure,
    String? passwordWrong,
  }) =>
      CommonTextInputModel(
        hint: hint.tr,
        hintColor: Color(AppColors.black),
        radius: 8,
        fontSize: fontH4,
        textColor: AppColors.blackLight,
        prefixIcon: CommonIcon(
          containerStyle: CommonContainerModel(
            paddingLeft: 0.05,
            paddingRight: 0.048,
            height: 0.5,
          ),
          path: icon,
          color: AppColors.blackLight,
        ),
        suffixIcon: CommonIcon(
          containerStyle: CommonContainerModel(
            paddingLeft: 0.05,
            paddingRight: 0.048,
            height: 0.5,
          ),
          path: passwordWrong ?? const IconData(0xe0005),
          color: AppColors.red,
        ),
        obscureText: secure ?? false,
        obscuringCharacter: '*',
      );
}
