import '../../general_exports.dart';
import '../my_plant_list/my_plant_list.dart';

class HomeBottomBarController extends GetxController {
  List<dynamic>? bottomBarItems = <dynamic>[
    <String, dynamic>{
      titleKey: 'Home',
      widgetKey: CommonText(
        text: 'Home',
      ),
      keyIcon: iconsIcHome,
    },
    <String, dynamic>{
      titleKey: 'Plant',
      widgetKey: const MyPlantScreen(),
      keyIcon: iconsIcTandurLogo,
    },
    <String, dynamic>{
      titleKey: 'Profile',
      widgetKey: CommonText(
        text: 'profile',
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
