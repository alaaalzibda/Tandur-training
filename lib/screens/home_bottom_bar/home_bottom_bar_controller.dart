import '../../general_exports.dart';

class HomeBottomBarController extends GetxController {
  List<dynamic>? bottomBarItems = <dynamic>[
    <String, dynamic>{
      titleKey: 'Home',
      widgetKey: CommonText(
        text: 'Home',
      ),
      keyIcon: iconArrowRightSmall,
    },
    <String, dynamic>{
      titleKey: 'Home2',
      widgetKey: CommonText(
        text: 'Home2',
      ),
      keyIcon: iconArrowRightSmall,
    },
    <String, dynamic>{
      titleKey: 'Home3',
      widgetKey: CommonText(
        text: 'Home3',
      ),
      keyIcon: iconArrowRightSmall,
    },
    <String, dynamic>{
      titleKey: 'Home4',
      widgetKey: CommonText(
        text: 'Home4',
      ),
      keyIcon: iconArrowRightSmall,
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
