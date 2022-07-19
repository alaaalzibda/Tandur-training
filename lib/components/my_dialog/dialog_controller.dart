import '../../general_exports.dart';

class DialogController extends GetxController{

  bool dialogController = false;

  void isSelected() {
    dialogController = !dialogController;
    update();
  }
}