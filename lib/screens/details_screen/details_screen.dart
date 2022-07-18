import 'package:flutter_svg/svg.dart';

import '../../general_exports.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  imageItemImage,
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  imageRectangle,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  left: DEVICE_WIDTH * 0.08,
                  top: DEVICE_HEIGHT * 0.05,
                  child: SvgPicture.asset(
                    iconsIcBack,
                    height: 18,
                    width: 18,
                  ),
                ),
                SizedBox(
                  width: DEVICE_WIDTH * 0.048,
                ),
                Positioned(
                  left: DEVICE_WIDTH * 0.184,
                  top: DEVICE_HEIGHT * 0.05,
                  child: CommonText(
                    text: 'chilli'.tr,
                    style: defaultTextStyles.h4StyleWhite().copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: DEVICE_WIDTH * 0.08,
                    top: DEVICE_HEIGHT * 0.229,
                  ),
                  child: CommonContainer(
                    style: CommonContainerModel(
                      width: 0.13,
                      height: 0.06,
                      borderRadius: DEVICE_HEIGHT * 0.03,
                      backgroundColor: Color(AppColors.primary),
                      borderColor: Color(AppColors.white),
                      borderWidth: 1.5,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: CommonText(
                        text: '90',
                        style: defaultTextStyles
                            .h3StyleWhite()
                            .copyWith(textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: DEVICE_WIDTH * 0.08),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: DEVICE_HEIGHT * 0.029,
                  ),
                  CommonText(
                    text: 'related_information'.tr,
                    style: defaultTextStyles.h4MediumBlackStyle(),
                  ),
                  SizedBox(
                    height: DEVICE_HEIGHT * 0.019,
                  ),
                  _detailsRelatedInformation(
                      textOne: 'your_location',
                      textTwo: 'location_indonesia',
                      path: iconsIcLocation),
                  _detailsRelatedInformation(
                      textOne: 'planters_near_you',
                      textTwo: '21',
                      path: iconsIcPerson),
                  _detailsRelatedInformation(
                      textOne: 'harvest_duration',
                      textTwo: 'months_4-5',
                      path: iconsIcTime),
                  SizedBox(
                    height: DEVICE_HEIGHT * 0.029,
                  ),
                  Row(
                    children: <Widget>[
                      CommonText(
                        text: 'your_environmental_condition'.tr,
                        style: defaultTextStyles.h4MediumBlackStyle(),
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        iconOptional,
                        width: 18,
                        height: 18,
                        color: Color(AppColors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: DEVICE_HEIGHT * 0.019,
                  ),
                  _blocYourEnvironmentalCondition(
                    textFirst: 'month_1',
                    textSecond: 'there_is_a_warning',
                    styleFirst: defaultTextStyles.h5StyleRed(),
                    styleScecond: defaultTextStyles.h6StyleRed(),
                    colorContent: AppColors.primary
                  ),
                  _blocYourEnvironmentalCondition(
                    textFirst: 'month_2',
                    textSecond: 'in_Accordance',
                    styleFirst: defaultTextStyles.h5StylePrimary(),
                    styleScecond: defaultTextStyles.h6StylePrimary(),
                      colorContent: AppColors.red
                  ),
                  _blocYourEnvironmentalCondition(
                    textFirst: 'month_3',
                    textSecond: 'it_is_not_in_accordance_with',
                    styleFirst: defaultTextStyles.h5StyleRed(),
                    styleScecond: defaultTextStyles.h6StyleRed(),
                      colorContent: AppColors.primary
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: MyCommonButton(
                      title: 'plant'.tr,
                      path: iconsIcTandurLogo,
                      style: defaultButtonStyles.whiteBorderButton(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _detailsRelatedInformation(
      {String? textOne, String? textTwo, String? path}) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                SvgPicture.asset(
                  path!,
                  color: Color(AppColors.black),
                  height: 18,
                  width: 18,
                ),
              ],
            ),
            SizedBox(
              width: DEVICE_WIDTH * 0.05,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CommonText(
                  text: textOne!.tr,
                  style: defaultTextStyles.h5MediumStyleBlack(),
                ),
                SizedBox(
                  height: DEVICE_HEIGHT * 0.004,
                ),
                CommonText(
                  text: textTwo!.tr,
                  style: defaultTextStyles.h6Style(),
                ),
              ],
            )
          ],
        ),
        Divider(
          thickness: 2,
          color: Color(
            AppColors.greyLight,
          ),
        ),
      ],
    );
  }

  Widget _blocYourEnvironmentalCondition(
      {String? textFirst,
      String? textSecond,
      int? colorContent,
      CommonTextModel? styleFirst,
      styleScecond}) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CommonText(
                  text: textFirst!.tr,
                  style: styleFirst!,
                  // defaultTextStyles.h5StyleRed(),
                ),
                SizedBox(
                  height: DEVICE_HEIGHT * 0.004,
                ),
                CommonText(
                  text: textSecond!.tr,
                  style: styleScecond!,
                  // defaultTextStyles.h6StyleRed(),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: <Widget>[
                _itemEnvironmental(
                  colorContent: colorContent,
                  textNumber: '202',
                  path: iconsIcRain,
                ),
                SizedBox(
                  width: DEVICE_WIDTH * 0.06,
                ),
                _itemEnvironmental(
                  colorContent: colorContent,
                  textNumber: '28C',
                  path: iconsIcTemperature,
                ),
                SizedBox(
                  width: DEVICE_WIDTH * 0.06,
                ),
                _itemEnvironmental(
                    colorContent: colorContent,
                    textNumber: '28C',
                    path: iconsIcHumidity),
              ],
            ),
          ],
        ),
        Divider(
          thickness: 2,
          color: Color(
            AppColors.greyLight,
          ),
        ),
      ],
    );
  }

  Widget _itemEnvironmental(
      {int? colorContent, String? textNumber, String? path}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset(
          path!,
          height: DEVICE_HEIGHT * 0.022,
          width: DEVICE_WIDTH * 0.048,
          color: Color(colorContent!),
        ),
        CommonText(
          text: textNumber!.tr,
          style: defaultTextStyles.h6StyleRed().copyWith(
                fontColor: Color(
                  colorContent,
                ),
              ),
        )
      ],
    );
  }
}
