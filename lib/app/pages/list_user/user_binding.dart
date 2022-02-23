
import 'package:api/app/app.dart';
import 'package:api/domain/domain.dart';
import 'package:get/get.dart';


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