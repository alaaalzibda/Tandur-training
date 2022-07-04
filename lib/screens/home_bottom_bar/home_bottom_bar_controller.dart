import '../../general_exports.dart';

class HomeBottomBarController extends GetxController {
  List<dynamic>? bottomBarItems = <dynamic>[
    <String, dynamic>{
      titleKey: 'Home',
      widgetKey: HomeScreen(),
      keyIcon: iconsIcHome,
    },
    <String, dynamic>{
      titleKey: 'plant',
      widgetKey: CommonText(
        text: 'plant',
      ),
      keyIcon: iconLogo,
    },
    <String, dynamic>{
      titleKey: 'Profile',
      widgetKey: CommonText(
        text: 'Profile',
      ),
      keyIcon: iconsIcPerson,
    },
  ];
  final AppLanguageController appLanguageController =
      Get.find<AppLanguageController>();
  int selectedIndex = 0;

  void updateSelectedIndex(int index) {
    selectedIndex = index;
    update();
  }
}
