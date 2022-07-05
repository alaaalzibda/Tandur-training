import '../../general_exports.dart';
import '../my_plant_list/my_plant_list.dart';

List<GetPage<dynamic>> appRoutes = <GetPage<dynamic>>[
  GetPage<HomeBottomBar>(
    name: routeHome,
    page: () => const HomeBottomBar(),
  ),
  GetPage<TestScreen>(
    name: routeTest,
    page: () => const TestScreen(),
  ),
  GetPage<SplashScreen>(
    name: routeSplash,
    page: () => const SplashScreen(),
  ),
  GetPage<SignInScreen>(
    name: routeSignInScreen,
    page: () => const SignInScreen(),
  ),
  // GetPage<SignUpScreen>(
  //   name: routeSignUp,
  //   page: () => const SignUpScreen(),
  // ),
  GetPage<MyPlantScreen>(
    name: routeMyPlant,
    page: () => const MyPlantScreen(),
  ),
];
