import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../../constants/index.dart';

/// start loading spinner
void startLoading() {
  SmartDialog.showLoading(
    // msg: '',
    // maskColorTemp: Colors.black54,
    // clickBgDismissTemp: true,
    builder: (BuildContext context) {
      return CircularProgressIndicator(
        strokeWidth: 5,
        valueColor: AlwaysStoppedAnimation<Color>(
          Color(
            AppColors.primary,
          ),
        ),
      );
    },
    // widget: Image.asset(
    //   BALL_GIF_IMAGE,
    //   width: DEVICE_WIDTH * 0.5,
    //   height: DEVICE_WIDTH * 0.5,
    // ),
  );
}

/// stop loading spinner
void dismissLoading() {
  SmartDialog.dismiss();
}
