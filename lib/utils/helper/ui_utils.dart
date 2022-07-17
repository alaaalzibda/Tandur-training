import 'package:flutter/services.dart';

import '../../general_exports.dart';

void hideKeyboard() {
  SystemChannels.textInput.invokeMethod('TextInput.hide');
}

int setColor(String color) {
  final String stringColor = '0xFF${color.replaceAll('#', '')}';
  final int newColor = int.parse(stringColor);
  return newColor;
}

String selectIcon(String cropsStatus) {
  if (cropsStatus == 'healthy_crops'.tr) {
    return iconsIcCheck;
  } else if (cropsStatus == 'warning_crops'.tr) {
    return iconsIcFalse;
  } else if (cropsStatus == 'satisfied_result'.tr ||
      cropsStatus == 'unsatisfied_result'.tr) {
    return iconsIcHappy;
  }
  return iconsIcTime;
}
