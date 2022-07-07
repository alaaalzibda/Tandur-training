import 'package:flutter_svg/svg.dart';

import '../../general_exports.dart';
// import 'input_text.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(
                  DEVICE_WIDTH * 0.02,
                  DEVICE_HEIGHT * 0.15,
                  DEVICE_WIDTH * 0.55,
                  DEVICE_HEIGHT * 0.02,
                ),
                child: CommonText(
                  text: 'my_profile'.tr,
                  style: CommonTextModel(
                    textAlign: TextAlign.left,
                    fontSize: fontH2,
                    fontWeight: FontWeight.bold,
                    fontColor: AppColors.blackLight,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: DEVICE_WIDTH * 0.1,
                    height: DEVICE_HEIGHT * 0.1,
                  ),
                  SvgPicture.asset(
                    iconsIcEmail,
                    alignment: Alignment.bottomCenter,
                    color: Color(AppColors.blackLight),
                    width: DEVICE_WIDTH * 0.06,
                  ),
                  SizedBox(
                    width: DEVICE_WIDTH * 0.1,
                    height: DEVICE_HEIGHT * 0.08,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'email'.tr,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: fontH5,
                          color: Color(AppColors.blackLight),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Ryan@gmail.com',
                        style: TextStyle(
                          fontSize: fontH6,
                          color: Color(AppColors.blackLight),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: DEVICE_WIDTH * 0.8,
                height: DEVICE_HEIGHT * 0.0047,
                color: Color(AppColors.grey),
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: DEVICE_WIDTH * 0.1,
                    height: DEVICE_HEIGHT * 0.1,
                  ),
                  SvgPicture.asset(
                    iconsIcPerson,
                    alignment: Alignment.bottomCenter,
                    color: Color(AppColors.blackLight),
                    width: DEVICE_WIDTH * 0.06,
                  ),
                  SizedBox(
                    width: DEVICE_WIDTH * 0.1,
                    height: DEVICE_HEIGHT * 0.08,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'your_full_name'.tr,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: fontH5,
                          color: Color(AppColors.blackLight),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'name'.tr,
                        style: TextStyle(
                          fontSize: fontH6,
                          color: Color(AppColors.blackLight),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: DEVICE_WIDTH * 0.8,
                height: DEVICE_HEIGHT * 0.0047,
                color: Color(AppColors.grey),
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: DEVICE_WIDTH * 0.1,
                    height: DEVICE_HEIGHT * 0.1,
                  ),
                  SvgPicture.asset(
                    iconsIcTandurLogo,
                    alignment: Alignment.bottomCenter,
                    color: Color(AppColors.blackLight),
                    width: DEVICE_WIDTH * 0.06,
                  ),
                  SizedBox(
                    width: DEVICE_WIDTH * 0.1,
                    height: DEVICE_HEIGHT * 0.08,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'active_plant'.tr,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: fontH5,
                          color: Color(AppColors.blackLight),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '20'.tr,
                        style: TextStyle(
                          fontSize: fontH6,
                          color: Color(AppColors.blackLight),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: DEVICE_WIDTH * 0.8,
                height: DEVICE_HEIGHT * 0.0047,
                color: Color(AppColors.grey),
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: DEVICE_WIDTH * 0.1,
                    height: DEVICE_HEIGHT * 0.1,
                  ),
                  SvgPicture.asset(
                    iconsIcHappy,
                    alignment: Alignment.bottomCenter,
                    color: Color(AppColors.blackLight),
                    width: DEVICE_WIDTH * 0.06,
                  ),
                  SizedBox(
                    width: DEVICE_WIDTH * 0.1,
                    height: DEVICE_HEIGHT * 0.08,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'satisfaction_rate'.tr,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: fontH5,
                          color: Color(AppColors.blackLight),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '95%'.tr,
                        style: TextStyle(
                          fontSize: fontH6,
                          color: Color(AppColors.blackLight),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: DEVICE_WIDTH * 0.8,
                height: DEVICE_HEIGHT * 0.0047,
                color: Color(AppColors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
