import 'package:get/get.dart';
import 'package:padrinhomed/view/intro/intro_screen/intro_screen.dart';
import 'package:padrinhomed/view/loading/loading.dart';
import 'package:padrinhomed/view/intro/splash_screen.dart';
import 'package:padrinhomed/view/user/login.dart';

class Routes {
  static final screens = [
    GetPage(
      name: AppLink.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: AppLink.login,
      page: () => const Login(),
    ),
    GetPage(
      name: AppLink.stepperScreen,
      page: () => const IntroScreen(),
    ), GetPage(
      name: AppLink.loading,
      page: () => const Loading(),
    ),
  ];
}

class AppLink {
  static const splashScreen = '/';
  static const login = '/login';
  static const stepperScreen = '/stepper_screen';
  static const loading = '/loading';
}
