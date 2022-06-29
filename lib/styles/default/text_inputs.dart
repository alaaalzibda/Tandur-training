import '../../general_exports.dart';

class DefaultTextInputStyles {
  CommonTextInputModel defaultTextInputModel(
          dynamic prefixIcon, dynamic labelText,
          {dynamic errorIcon}) =>
      CommonTextInputModel(
        prefixWidget: CommonText(
          containerStyle: CommonContainerModel(
            marginHorizontal: DEVICE_WIDTH,
            marginVertical: DEVICE_HEIGHT,
          ),
        ),
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
}
