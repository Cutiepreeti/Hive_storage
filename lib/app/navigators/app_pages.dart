import 'package:api/app/pages/list_user/list_user.dart';
import 'package:api/app/pages/login/login.dart';
import 'package:api/app/pages/login/login_binding.dart';
import 'package:api/app/pages/home_page/home.dart';
import 'navigators.dart';
import 'package:get/get.dart';

class AppPages
{
  static const initial=Routes.logIn;
  static final pages=[
    GetPage<LoginView>
      (
      name: Routes.logIn,
      page:LoginView.new,
      binding:LoginBinding(),
      transition:Transition.leftToRight,
    ),
    GetPage<Home>
      (
      name: Routes.home,
      page:Home.new,
      binding:HomeBinding(),
      transition:Transition.leftToRight,
    ),
    GetPage<UserView>
      (
      name: Routes.listUser,
      page:UserView.new,
      binding:ListUserBinding(),
      transition:Transition.leftToRight,
    ),
  ];
}