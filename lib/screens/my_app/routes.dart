import '../../general_exports.dart';
import '../profile_screen/profile_screen.dart';

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
  GetPage<SignUpFormScreen>(
    name: routeSignUpForm,
    page: () => const SignUpFormScreen(),
  ),
  GetPage<SignupScreen>(
    name: routeSignUp,
    page: () => const SignupScreen(),
  ),
  GetPage<SignInScreen>(
    name: routeSignIn,
    page: () => const SignInScreen(),
  ),
  GetPage<Profile>(
    name: routeProfile,
    page: () => const Profile(),
  ),
];
