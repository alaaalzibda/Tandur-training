import '../../general_exports.dart';

class DialogController extends GetxController{

  bool dialogController = false;

  void isSelected() {
      if(dialogController){
        dialogController = false;
      }
      else {
        dialogController = true;
      }
      update();
  }
}