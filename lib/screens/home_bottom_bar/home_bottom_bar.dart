import 'package:flutter_svg/svg.dart';

import '../../general_exports.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    setIsRTL(context);
    return GetBuilder<HomeBottomBarController>(
      init: HomeBottomBarController(),
      builder: (HomeBottomBarController controller) => SafeArea(
        child: Scaffold(
          body: controller.bottomBarItems == null
              ? const Center()
              : Column(
                  children: <Widget>[
                    Expanded(
                      child: controller
                          .bottomBarItems![controller.selectedIndex][widgetKey],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: CommonContainer(
                        style: CommonContainerModel(
                          height: 0.08,
                          width: 1,
                          borderTopWidth: 1,
                          borderTopColor: AppColors.red,
                          paddingHorizontal: 0.07,
                          backgroundColor: AppColors.greyDark,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            ...(controller.bottomBarItems)!.map(
                              (dynamic e) {
                                final int index =
                                    (controller.bottomBarItems!.indexOf(e));
                                return Stack(
                                  children: <Widget>[
                                    CommonContainer(
                                      style: CommonContainerModel(
                                        height: 0.1,
                                      ),
                                      onPress: () {
                                        controller.updateSelectedIndex(index);
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          SvgPicture.asset(
                                            e[keyIcon],
                                            width: DEVICE_WIDTH * 0.025,
                                            height: DEVICE_HEIGHT * 0.025,
                                            color: Color(
                                              index == controller.selectedIndex
                                                  ? AppColors.red
                                                  : AppColors.grey,
                                            ),
                                          ),
                                          CommonText(
                                            text: e[titleKey],
                                            style: appTextStyles
                                                .h4Style()
                                                .copyWith(
                                                  fontColor: index ==
                                                          controller
                                                              .selectedIndex
                                                      ? AppColors.red
                                                      : AppColors.grey,
                                                ),
                                            containerStyle:
                                                CommonContainerModel(
                                              marginTop: 0.01,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    if (index == controller.selectedIndex)
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        left: 0,
                                        child: Center(
                                          child: CommonContainer(
                                            style: CommonContainerModel(
                                              height: 0.005,
                                              width: 0.03,
                                              borderRadius: 0.01,
                                              backgroundColor: AppColors.red,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                );
                              },
                            ).toList(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
