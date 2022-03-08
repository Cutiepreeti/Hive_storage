
import 'dart:io';
import 'package:api/app/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as https;

import '../variables.dart';

class _MyHttpOverrides extends HttpOverrides {}
void main(){
  HttpOverrides.global = _MyHttpOverrides();
   test(
       'Api Testing',
       () async {
         var http = https.Client();
         Variables.layerBinding.builder();
         Variables.UserBinding.builder();
         debugPrint('Initializing Bindings');
         
         var _controller=Get.find<UserController>();
         await _controller.getUsers(http);
       },
   );
}
