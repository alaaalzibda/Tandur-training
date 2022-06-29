import '../../general_exports.dart';

class DefaultTextInputStyles {
  CommonTextInputModel defaultTextInputModel() => CommonTextInputModel(
        prefixWidget: CommonText(
          containerStyle: CommonContainerModel(
            marginHorizontal: DEVICE_WIDTH,
            marginVertical: DEVICE_HEIGHT,
          ),
        ),
        fontSize: fontH3,
      );

  CommonTextInputModel descriptionTextInputModel(dynamic prefixIcon,
          {dynamic errorIcon}) =>
      CommonTextInputModel(
        fontSize: fontH3,
        minLines: 4,
        hint: 'langType',
        withBorderSide: false,
        prefixIcon: prefixIcon ?? const Icon(Icons.lock),
        suffixIcon: errorIcon ?? Icon,
      );

  CommonContainerModel descriptionContainerModel() => CommonContainerModel(
        borderColor: AppColors.grey,
        borderRadius: 0.025,
        borderWidth: 1,
        marginBottom: 0.015,
      );
}
