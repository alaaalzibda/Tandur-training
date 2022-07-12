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
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                            DEVICE_WIDTH * 0.12,
                            DEVICE_HEIGHT * 0.1,
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
                              vertical: DEVICE_HEIGHT * 0.025),
                          child: Center(
                            child: CommonTextInput(
                              style: defaultTextInputStyles.textFieldInputStyle(
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
                    TabBar(
                      controller: controller.myTapController,
                      labelColor: Color(AppColors.primary),
                      padding: EdgeInsets.only(
                        right: DEVICE_WIDTH * 0.5,
                        left: DEVICE_WIDTH * 0.05,
                      ),
                      unselectedLabelColor: Color(AppColors.blackLight),
                      indicatorColor: Color(AppColors.primary),
                      tabs: <Widget>[
                        Tab(
                          text: 'planted'.tr,
                        ),
                        Tab(
                          text: 'harvested'.tr,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: DEVICE_HEIGHT * 0.55,
                      width: DEVICE_WIDTH * 0.8,
                      child: TabBarView(
                        controller: controller.myTapController,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              plantInfo(cityName, healthyCrops, timeToHarvest),
                              plantInfo(cityName, warningCrops, timeToHarvest),
                              SizedBox(
                                height: DEVICE_HEIGHT * 0.2,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: MyCommonButton(
                                  title: 'plant'.tr,
                                  path: iconsIcTandurLogo,
                                  style:
                                      defaultButtonStyles.whiteBorderButton(),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              plantInfo(
                                  cityName, satisfiedResult, harvestedTime),
                              plantInfo(
                                  cityName, unsatisfiedResult, harvestedTime),
                              SizedBox(
                                height: DEVICE_HEIGHT * 0.2,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: MyCommonButton(
                                  title: 'plant'.tr,
                                  path: iconsIcTandurLogo,
                                  style:
                                      defaultButtonStyles.whiteBorderButton(),
                                ),
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

  Widget plantInfo(String cityName, String cropsStatus, String harvestTime) {
    // ignore: prefer_final_locals
    return GetBuilder<MyControllerList>(builder: (MyControllerList controller) {
      return InkWell(
        onTap: () {
          controller.tap();
        },
        onTapCancel: () {
          controller.tap();
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: controller.isSelected
                  ? Color(AppColors.red)
                  : Color(AppColors.primary),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
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
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CommonText(
                        text: cityName,
                        style: defaultTextStyles.commonLeftTextStyle(),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CommonText(
                          text: cropsStatus,
                          style: defaultTextStyles
                              .commonRightTextStyle(cropsStatus),
                        ),
                        CommonText(
                          text: harvestTime,
                          style: defaultTextStyles
                              .commonRightTextStyle(harvestTime),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
