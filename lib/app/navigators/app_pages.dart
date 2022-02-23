import 'package:api/app/app.dart';
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