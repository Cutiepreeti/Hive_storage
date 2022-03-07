import 'package:api/app/app.dart';
import 'package:api/data/data.dart';
import 'package:api/device/device.dart';
import 'package:api/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Variables {
  static final layerBinding = BindingsBuilder<dynamic>(
        () {
      Get.lazyPut(
            () =>
            Repository(
              Get.put(
                DataRepository(
                  Get.put(
                    ConnectHelper(),
                  ),
                ),
              ),
              Get.put(
                DeviceRepository(),
              ),
            ),
      );
    },
  );


  static final loginBinding = BindingsBuilder<dynamic>(
      () {
        Get.lazyPut(
                () => Controller(Get.put(Presenter(Get.put(AuthUseCase(Get.find()))))));
      }
  );

  ///Widget Test
 static Material getTheMaterialAppWrapper(
     Widget widget,
     ) =>
     Material(
       child: ScreenUtilInit(
         designSize:const Size(375,745),
        builder: () =>
           GetMaterialApp(
           home: widget,
           ),
      ),
     );
}

