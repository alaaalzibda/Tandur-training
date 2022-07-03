import '../../general_exports.dart';

class DefaultTextInputStyles {
  CommonTextInputModel defaultTextInputModel({dynamic errorIcon}) =>
      CommonTextInputModel(
        fontSize: fontH3,
      );

  CommonTextInputModel descriptionTextInputModel() => CommonTextInputModel(
        fontSize: fontH3,
        minLines: 4,
        hint: '',
        withBorderSide: false,
      );

  CommonContainerModel descriptionContainerModel() => CommonContainerModel(
        borderColor: AppColors.grey,
        borderRadius: 0.025,
        borderWidth: 1,
        marginBottom: 0.015,
      );

  CommonTextInputModel textFieldInputStyle(String hint, IconData icon,
          {bool? secure}) =>
      CommonTextInputModel(
        hint: hint.tr,
        hintColor: Color(AppColors.black),
        radius: 8,
        prefixIcon: CommonIcon(
          containerStyle: CommonContainerModel(
            paddingLeft: 0.03,
            paddingRight: 0.01,
          ),
          path: icon,
        ),
        obscureText: secure,
      );
}
