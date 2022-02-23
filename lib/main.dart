
import 'package:api/app/app.dart';
import 'package:api/data/data.dart';
import 'package:api/device/device.dart';
import 'package:api/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await initServices();
 runApp( const MyApp());
}

  Future<void>initServices() async{
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
  Widget build(BuildContext context)=>GetMaterialApp(
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: AppPages.initial,
    );
}
