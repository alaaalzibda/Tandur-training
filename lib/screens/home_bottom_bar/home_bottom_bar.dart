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
                          backgroundColor: AppColors.white,
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
                                                  ? AppColors.primary
                                                  : AppColors.blackLight,
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
                                                      ? AppColors.primary
                                                      : AppColors.blackLight,
                                                ),
                                            containerStyle:
                                                CommonContainerModel(
                                              marginTop: 0.01,
                                            ),
                                          ),
                                        ],
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
