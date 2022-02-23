
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:api/app/navigators/navigators.dart';
import 'data/helpers/connect_helper.dart';
import 'data/repositories/data_repository.dart';
import 'device/repositories/device_repository.dart';
import 'domain/repositories/repository.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await initServices();
 runApp( const MyApp());
}

  initServices() async{
    Get.put(
      Repository(
        Get.put(
          DataRepository(
            Get.put(
              ConnectHelper(),
              permanent: true,
            ),
          ),
          permanent: true,
        ),
        Get.put(
            DeviceRepository(
            ),
            permanent: true),
      ),
    );
    await Get.putAsync(() => DbService().init());
  }

class DbService extends GetxService {
  Future<DbService> init() async {
    await Get.find<DeviceRepository>().init();
    return this;
  }
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: AppPages.initial,
    );
  }
}
