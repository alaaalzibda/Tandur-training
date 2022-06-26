import '../../general_exports.dart';

class LabeledTextController extends GetxController {
  bool isFocused = false;
  FocusNode focus = FocusNode();
  TextEditingController textEditingController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    focus.addListener(_onFocusChange);
  }

  @override
  void onClose() {
    super.onClose();
    focus.removeListener(_onFocusChange);
  }

  void _onFocusChange() {
    isFocused = focus.hasFocus;
    update();
  }
}
