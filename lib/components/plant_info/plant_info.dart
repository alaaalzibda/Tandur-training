import '../../general_exports.dart';
import 'plant_info_controller.dart';

class PlantsInfo extends StatelessWidget {
  const PlantsInfo({
    this.plantName,
    this.cropsStatus,
    this.harvestTime,
    Key? key,
  }) : super(key: key);

  final String? plantName;
  final String? cropsStatus;
  final String? harvestTime;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlantInfoController>(
        init: PlantInfoController(),
        global: false,
        builder: (PlantInfoController controller) {
          return GestureDetector(
            onTap: controller.onSelectItem,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(controller.isSelected
                      ? AppColors.red
                      : AppColors.primary),
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
                            text: plantName,
                            style: defaultTextStyles.commonLeftTextStyle(),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CommonText(
                              text: cropsStatus,
                              style: defaultTextStyles
                                  .commonRightTextStyle(cropsStatus!),
                            ),
                            CommonText(
                              text: harvestTime,
                              style: defaultTextStyles
                                  .commonRightTextStyle(harvestTime!),
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
