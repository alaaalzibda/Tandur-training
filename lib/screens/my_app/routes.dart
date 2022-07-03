import '../../general_exports.dart';

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
];
