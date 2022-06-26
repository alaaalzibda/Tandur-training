import 'package:common_ui_toolkit/index.dart';
import 'package:get/get.dart';

/// show alert
void showMessage({
  String? description,
  String? type,
  int? textColor,
  bool withBackground = true,
}) {
  Get.snackbar(
    '',
    '',
    // titleText: CommonText(
    //   style: h3MediumStyle.copyWith(textAlign: TextAlign.start),
    //   containerStyle:
    //       CommonContainerModel(alignment: AlignmentDirectional.centerStart),
    //   text: languageByKey(alert),
    //   // text: description!,
    // ),
    messageText: CommonText(
      // style: h3MediumStyleBlack.copyWith(textAlign: TextAlign.start),
      containerStyle:
          CommonContainerModel(alignment: AlignmentDirectional.centerStart),
      // text: languageByKey(alert),
      text: description ?? '',
    ),
    backgroundColor: withBackground ? Colors.white60 : null,
    barBlur: 2,
  );
}

/// show popup
void showPopUp({Widget? child}) {
  Get.dialog(
    child!,
    barrierDismissible: false,
    barrierColor: Colors.transparent,
  );
}
