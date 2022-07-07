import '../../general_exports.dart';
import 'my_controller_list.dart';
// import 'input_text.dart';

class MyPlantScreen extends StatelessWidget {
  const MyPlantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String healthyCrops = 'healthy_crops'.tr;
    final String warningCrops = 'warning_crops'.tr;
    final String timeToHarvest = 'time_to_harvest'.tr;
    final String satisfiedResult = 'satisfied_result'.tr;
    final String unsatisfiedResult = 'unsatisfied_result'.tr;
    final String harvestedTime = 'harvested_time'.tr;
    final String cityName = 'chili'.tr;
    return GetBuilder<MyControllerList>(
        init: MyControllerList(),
        builder: (MyControllerList controller) {
          return SafeArea(
            child: DefaultTabController(
              length: 2,
              child: Scaffold(
                body: Column(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                              DEVICE_WIDTH * 0.12,
                              DEVICE_HEIGHT * 0.15,
                              DEVICE_WIDTH * 0.65,
                              DEVICE_HEIGHT * 0.01,
                            ),
                            child: CommonText(
                              text: 'my_plant'.tr,
                              style: CommonTextModel(
                                textAlign: TextAlign.left,
                                fontSize: fontH2,
                                fontWeight: FontWeight.bold,
                                fontColor: AppColors.blackLight,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: DEVICE_WIDTH * 0.1,
                                vertical: DEVICE_HEIGHT * 0.03),
                            child: Center(
                              child: CommonTextInput(
                                style:
                                    defaultTextInputStyles.textFieldInputStyle(
                                  'search'.tr,
                                  iconsIcSearch,
                                  borderEnable: false,
                                ),
                                containerStyle: defaultTextInputStyles
                                    .descriptionContainerModel(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    TabBar(
                      controller: controller.myTapController,
                      labelColor: Color(AppColors.primary),
                      padding: EdgeInsets.only(right: DEVICE_WIDTH * 0.5),
                      unselectedLabelColor: Color(AppColors.blackLight),
                      indicatorColor: Color(AppColors.primary),
                      // labelPadding:
                      //     EdgeInsets.symmetric(horizontal: DEVICE_WIDTH ),
                      tabs: <Widget>[
                        Tab(
                          text: 'planted'.tr,
                        ),
                        Tab(text: 'harvested'.tr),
                      ],
                    ),
                    SizedBox(
                      height: DEVICE_HEIGHT * 0.25,
                      width: DEVICE_WIDTH * 0.8,
                      child: TabBarView(
                        controller: controller.myTapController,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Stack(
                                alignment: AlignmentDirectional.centerEnd,
                                children: <Widget>[
                                  Image.asset(
                                    imageItemBackground,
                                    fit: BoxFit.fill,
                                  ),
                                  Image.asset(
                                    imageItemShadow,
                                    height: DEVICE_HEIGHT * 0.09,
                                    fit: BoxFit.fill,
                                  ),
                                  Positioned(
                                    child: Row(
                                      // mainAxisAlignment:
                                      // MainAxisAlignment.spaceBetwe,
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: CommonText(
                                            text: cityName,
                                            style: defaultTextStyles
                                                .commonLeftTextStyle(),
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            CommonText(
                                              text: healthyCrops,
                                              style: defaultTextStyles
                                                  .commonRightTextStyle(
                                                      healthyCrops),
                                            ),
                                            CommonText(
                                              text: timeToHarvest,
                                              style: defaultTextStyles
                                                  .commonRightTextStyle(
                                                      timeToHarvest),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children: <Widget>[
                                  Image.asset(
                                    imageItemBackground,
                                    fit: BoxFit.fill,
                                  ),
                                  Image.asset(
                                    imageItemShadow,
                                    height: DEVICE_HEIGHT * 0.09,
                                    fit: BoxFit.fill,
                                  ),
                                  Positioned(
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: CommonText(
                                            text: cityName,
                                            style: defaultTextStyles
                                                .commonLeftTextStyle(),
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            CommonText(
                                              text: warningCrops,
                                              style: defaultTextStyles
                                                  .commonRightTextStyle(
                                                      warningCrops),
                                            ),
                                            CommonText(
                                              text: timeToHarvest,
                                              style: defaultTextStyles
                                                  .commonRightTextStyle(
                                                      timeToHarvest),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Stack(
                                alignment: AlignmentDirectional.centerEnd,
                                children: <Widget>[
                                  Image.asset(
                                    imageItemBackground,
                                    fit: BoxFit.fill,
                                  ),
                                  Image.asset(
                                    imageItemShadow,
                                    height: DEVICE_HEIGHT * 0.09,
                                    fit: BoxFit.fill,
                                  ),
                                  Positioned(
                                    child: Row(
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: CommonText(
                                            text: cityName,
                                            style: defaultTextStyles
                                                .commonLeftTextStyle(),
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            CommonText(
                                              text: satisfiedResult,
                                              style: defaultTextStyles
                                                  .commonRightTextStyle(
                                                      satisfiedResult),
                                            ),
                                            CommonText(
                                              text: harvestedTime,
                                              style: defaultTextStyles
                                                  .commonRightTextStyle(
                                                      harvestedTime),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children: <Widget>[
                                  Image.asset(
                                    imageItemBackground,
                                    fit: BoxFit.fill,
                                  ),
                                  Image.asset(
                                    imageItemShadow,
                                    height: DEVICE_HEIGHT * 0.09,
                                    fit: BoxFit.fill,
                                  ),
                                  Positioned(
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: CommonText(
                                            text: cityName,
                                            style: defaultTextStyles
                                                .commonLeftTextStyle(),
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            CommonText(
                                              text: unsatisfiedResult,
                                              style: defaultTextStyles
                                                  .commonRightTextStyle(
                                                      unsatisfiedResult),
                                            ),
                                            CommonText(
                                              text: harvestedTime,
                                              style: defaultTextStyles
                                                  .commonRightTextStyle(
                                                      harvestedTime),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
