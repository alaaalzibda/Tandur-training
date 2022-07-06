import '../../general_exports.dart';

class DefaultContainerStyles {
  CommonContainerModel containerStyles = CommonContainerModel(
    width: DEVICE_WIDTH,
    height: 0.95,
  );
  CommonContainerModel defaultButtonContainer = CommonContainerModel(
    width: 1,
    height: 0.06,
    borderWidth: 2,
    borderColor: AppColors.black,
    borderRadius: 0.03,
    marginHorizontal: 0.08,
  );

  CommonContainerModel defaultSmallButtonContainer = CommonContainerModel(
    width: 0.3,
    height: 0.06,
    borderRadius: 0.03,
  );

  CommonContainerModel defaultContainerStyle = CommonContainerModel(
    touchEffect: TouchableEffect(
      type: TouchTypes.opacity,
    ),
  );

  CommonContainerModel bottomSheetContainer() => CommonContainerModel(
        paddingHorizontal: DEVICE_WIDTH * 0.1,
        backgroundImage: const DecorationImage(
          image: AssetImage(imageItemBackground),
        ),
        backgroundColor: AppColors.black,
        topLeftRadius: 0.05,
        topRightRadius: 0.05,
        width: 50,
        marginTop: 0.1,
      );

  CommonContainerModel profileHeaderStyle = CommonContainerModel(
    backgroundColor: AppColors.greyDark,
    width: 1.0,
    bottomLeftRadius: 0.1,
    bottomRightRadius: 0.1,
    paddingHorizontal: 0.07,
    paddingVertical: 0.03,
  );

  CommonContainerModel commonTapBarContainer() => CommonContainerModel(
      borderColor: AppColors.primary,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageItemBackground),
        ),
      ));
}
