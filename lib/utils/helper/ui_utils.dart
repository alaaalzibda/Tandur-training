import 'package:flutter/services.dart';

void hideKeyboard() {
  SystemChannels.textInput.invokeMethod('TextInput.hide');
}

int setColor(String color) {
  final String stringColor = '0xFF${color.replaceAll('#', '')}';
  final int newColor = int.parse(stringColor);
  return newColor;
}
