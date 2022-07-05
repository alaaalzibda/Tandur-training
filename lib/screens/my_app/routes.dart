import '../../general_exports.dart';
import '../signUp.dart';
import '../auth/signin_screen.dart';

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
  GetPage<SignupScreen>(
    name: routeSignUp,
    page: () => const SignupScreen(),
  ),
  GetPage<SignUp>(
    name: routeSignUpForm,
    page: () => const SignUp(),
  ),
];
