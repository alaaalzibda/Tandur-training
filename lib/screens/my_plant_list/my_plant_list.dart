import '../../components/plant_info/plant_info.dart';
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
    final String plantName = 'chili'.tr;
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
                              PlantsInfo(
                                plantName: plantName,
                                cropsStatus: healthyCrops,
                                harvestTime: timeToHarvest,
                              ),
                              PlantsInfo(
                                plantName: plantName,
                                cropsStatus: warningCrops,
                                harvestTime: timeToHarvest,
                              ),
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
                              PlantsInfo(
                                plantName: plantName,
                                cropsStatus: satisfiedResult,
                                harvestTime: harvestedTime,
                              ),
                              PlantsInfo(
                                plantName: plantName,
                                cropsStatus: unsatisfiedResult,
                                harvestTime: harvestedTime,
                              ),
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

  // Widget plantInfo(String plantName, String cropsStatus, String harvestTime) {
  //   return GetBuilder<MyControllerList>(builder: (MyControllerList controller) {
  //     return InkWell(
  //       onTap: () {
  //         controller.tap();
  //       },
  //       onTapCancel: () {
  //         controller.tap();
  //       },
}
