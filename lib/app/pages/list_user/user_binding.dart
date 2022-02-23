
import 'package:api/app/pages/list_user/user_controller.dart';
import 'package:api/app/pages/list_user/user_presenter.dart';
import 'package:get/get.dart';

import '../../../domain/usecases/auth_usecases.dart';

class ListUserBinding extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut(
            () => UserController(
          Get.put(
            UserPresenter(
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