

import 'package:api/app/pages/login/login.dart';
import 'package:api/domain/usecases/auth_usecases.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(
            () => Controller(
                Get.put(
                    Presenter(
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