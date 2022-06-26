import '../../general_exports.dart';

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({
    this.child,
    this.title,
    this.style,
    Key? key,
  }) : super(key: key);

  final Widget? child;
  final String? title;
  final CommonContainerModel? style;

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      style: style ?? appContainerStyles.bottomSheetContainer(),
      child: Stack(
        children: <Widget>[
          CommonContainer(
            style: CommonContainerModel(
              marginTop: 0.1,
            ),
            child: child ?? const SizedBox(),
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Column(
              children: <Widget>[
                CommonContainer(
                  style: CommonContainerModel(
                    width: 0.15,
                    height: 0.005,
                    borderRadius: 0.02,
                    backgroundColor: AppColors.greyDark,
                    marginTop: 0.015,
                    marginBottom: 0.01,
                  ),
                ),
                SizedBox(
                  height: DEVICE_HEIGHT * 0.01,
                ),
                CommonText(
                  text: title ?? '',
                  style: appTextStyles.h2StyleBlack().copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
