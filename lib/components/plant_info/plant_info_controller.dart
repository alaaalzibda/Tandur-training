import '../../general_exports.dart';

class PlantInfoController extends GetxController {
  bool isSelected = false;

  void onSelectItem() {
    isSelected = !isSelected;
    update();
  }
}
