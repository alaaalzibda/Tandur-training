import '../../general_exports.dart';

class MyControllerList extends GetxController
    with GetSingleTickerProviderStateMixin {
  TabController? myTapController;
  bool isSelected = false;

  @override
  void onInit() {
    super.onInit();
    myTapController = TabController(length: 2, vsync: this);
  }

  void tap() {
    isSelected = !isSelected;
    update();
  }
}
