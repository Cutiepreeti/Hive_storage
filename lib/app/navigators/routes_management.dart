import 'package:api/app/app.dart';
import 'package:get/get.dart';

abstract class RouteManagement
{
  static void goToHome(int index)
  {
    Get.toNamed<void>(Routes.home, arguments: {'index': index});
  }

  static void goToLogin() {
    Get.toNamed<void>(Routes.logIn);
  }

  static void goToUsers()
  {
    Get.toNamed<void>(Routes.listUser);
  }
}