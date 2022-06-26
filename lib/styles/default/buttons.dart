import '../../general_exports.dart';

final DefaultTextStyles _defaultTextStyles = DefaultTextStyles();
final DefaultContainerStyles _defaultContainerStyles = DefaultContainerStyles();

class DefaultButtonStyles {
  CommonButtonStyle defaultButtonStyle() => CommonButtonStyle(
        containerStyle: _defaultContainerStyles.defaultButtonContainer,
        style: defaultButtonModel(),
        textStyle: _defaultTextStyles.h3MediumStyleWhite(),
      );

  CommonButtonStyle loginButtonStyle({
    dynamic isEnable = false,
  }) =>
      CommonButtonStyle(
        containerStyle: _defaultContainerStyles.defaultButtonContainer,
        style: defaultButtonModel().copyWith(
          backgroundColor: AppColors.greyDark,
          isEnable: isEnable,
        ),
        textStyle: _defaultTextStyles.h3MediumStyleWhite(),
      );

  CommonButtonStyle defaultSmallButton() => CommonButtonStyle(
        style: CommonButtonModel(
          backgroundColor: AppColors.black,
          borderRadius: 10,
        ),
        textStyle: CommonTextModel(
          fontColor: AppColors.white,
        ),
      );

  CommonButtonModel defaultButtonModel() => CommonButtonModel(
        backgroundColor: AppColors.greyDark,
        borderRadius: 8,
      );

  CommonButtonStyle defaultButtonGreyStyle() => CommonButtonStyle(
        containerStyle: _defaultContainerStyles.defaultButtonContainer,
        style: defaultGreyButtonModel(),
        textStyle: _defaultTextStyles.h3MediumStyleWhite().copyWith(
              fontColor: Colors.black,
            ),
      );

  CommonButtonModel defaultGreyButtonModel() => defaultButtonModel().copyWith(
        backgroundColor: AppColors.greyDark,
      );

  CommonButtonStyle bottomMarginButtonStyle() => defaultButtonStyle().copyWith(
        containerStyle: defaultButtonStyle().containerStyle!.copyWith(
              marginBottom: 0.03,
            ),
      );
}
