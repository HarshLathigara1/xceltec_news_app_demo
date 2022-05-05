import 'package:get/get.dart';
import 'package:untitled/config/login/login_screen.dart';
import 'package:untitled/dashboard/dashboard_screen.dart';
import 'package:untitled/register/register_screen.dart';
import 'package:untitled/splash/splash_screen.dart';
import 'app_routes.dart';

class AppScreens {
  static var list = [
    GetPage(
      name: AppRoutes.SPLASH_SCREEN,
      page: () =>  const SplashScreen(),
    ),
    GetPage(
      name: AppRoutes.REGISTER_SCREEN,
      page: () =>  const RegisterScreen(),
    ),

    GetPage(
      name: AppRoutes.DASHBOARD_SCREEN,
      page: () =>  const DashbaordScreen(),
    ),
    //LOGIN_SCREEN
    GetPage(
      name: AppRoutes.LOGIN_SCREEN,
      page: () =>  const LoginScreen(),
    ),

    //DashbaordScreen

    //RegisterScreen
  ];
}
