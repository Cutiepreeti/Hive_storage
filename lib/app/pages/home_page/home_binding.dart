

import 'package:api/app/pages/home_page/home.dart';
import 'package:api/domain/usecases/auth_usecases.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(
            () => HomeController(
              Get.put(
                HomePresenter(
                  Get.put(
                    AuthUseCase(
                      Get.find(),
                    ),
                  ),
                ),
              ),
            ),
            fenix:true);
  }
}