import 'package:api/app/app.dart';
import 'package:api/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController
{
  UserController(this._userPresenter);
  late final UserPresenter _userPresenter;

  String? value;
  List<Datum> listUser=[];


  Future<List<Datum>>getUsers(dynamic http)
   async{
        //print('Hello');
        var response=await _userPresenter.getUser(http);
          listUser = response.data!;
          print(listUser.first.firstName);
          print(listUser.first.lastName);
          update();
          return listUser;
         //throw UnimplementedError();
   }


 void saveValue(String key,String value) {
    _userPresenter.saveValue(key,value);

}

void getValue(String key) {
   _userPresenter.getValue(key);

}

void deleteAllValue() {
   _userPresenter.deleteAllValue();
}

  Future<String?>getLoginvalue(String key)
  async {
    var value =await _userPresenter.getLoginvalue(key);
    debugPrint('$key is: $value');
    return value;
  }

  void deleteLoginvalue(String key)
  {
    //print(key);
    _userPresenter.deleteLoginvalue(key);
  }

  @override
  void onInit()
   {
     //getUsers();
     super.onInit();
   }
}

