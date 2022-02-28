

import 'package:api/app/app.dart';
import 'package:api/domain/domain.dart';
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
        );
  }
}