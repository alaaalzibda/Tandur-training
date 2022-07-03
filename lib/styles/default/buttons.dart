import '../../general_exports.dart';

final DefaultTextStyles _defaultTextStyles = DefaultTextStyles();
final DefaultContainerStyles _defaultContainerStyles = DefaultContainerStyles();

class DefaultButtonStyles {
  CommonButtonStyle defaultButtonStyle({
    dynamic borderColor,
    dynamic backgroundColor,
    dynamic width,
  }) =>
      CommonButtonStyle(
        containerStyle: CommonContainerModel(
          height: 0.064,
          width: width ?? 0.0,
          borderBottomStyle: BorderStyle.solid,
          borderColor: borderColor ?? AppColors.transparent,
          borderWidth: 2.5,
          borderRadius: 0.03,
        ),
        style: CommonButtonModel(
          backgroundColor: backgroundColor ?? AppColors.primary,
          borderRadius: 8,
        ),
      );

  CommonButtonStyle whiteBorderButton() => defaultButtonStyle(
        borderColor: AppColors.white,
      );

  CommonButtonStyle fullWidthButtonStyle() => defaultButtonStyle(
    width: DEVICE_WIDTH,
  );

  CommonButtonStyle redBackgroundButtonStyle() => defaultButtonStyle(
    backgroundColor: AppColors.red,
  );
}
