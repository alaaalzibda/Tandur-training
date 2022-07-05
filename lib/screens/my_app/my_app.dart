import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../../general_exports.dart';

DefaultButtonStyles appButtonStyles = DefaultButtonStyles();
DefaultTextInputStyles appTextInputStyles = DefaultTextInputStyles();
DefaultTextStyles appTextStyles = DefaultTextStyles();
DefaultContainerStyles appContainerStyles = DefaultContainerStyles();

final DefaultButtonStyles defaultButtonStyles = DefaultButtonStyles();
final DefaultTextInputStyles defaultTextInputStyles = DefaultTextInputStyles();
final DefaultTextStyles defaultTextStyles = DefaultTextStyles();
final DefaultContainerStyles defaultContainerStyles = DefaultContainerStyles();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale(Get.find<AppLanguageController>().appLocale),
      builder: (BuildContext context, Widget? child) {
        return ScrollConfiguration(
          // This behavior disables the effect of the default scroll behavior.
          behavior: MyScrollBehavior(),
          child: FlutterSmartDialog(child: child),
        );
      },
      theme: ThemeData(
        fontFamily: 'poppins',
        primaryColor: Color(AppColors.primary),
      ),

      translations: Translation(),
      // we use the fallbackLocale to handel any error in language files and use the en as default language
      fallbackLocale: const Locale('en'),
      debugShowCheckedModeBanner: false,
      initialRoute: Get.find<MyAppController>().userData == null ? routeSignUpForm : routeHome,
      getPages: appRoutes,
    );
  }
}
