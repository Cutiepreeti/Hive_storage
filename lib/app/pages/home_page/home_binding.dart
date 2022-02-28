

import 'package:api/app/app.dart';
import 'package:api/domain/domain.dart';
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
     );
  }
}