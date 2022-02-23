import 'package:get/get.dart';
import 'navigators.dart';
abstract class RouteManagement
{
  static void goToHome()
  {
    Get.toNamed<void>(Routes.home);
  }

  static void goToLogin() {
    Get.toNamed<void>(Routes.logIn);
  }

  static void goToUsers()
  {
    Get.toNamed<void>(Routes.listUser);
  }
}