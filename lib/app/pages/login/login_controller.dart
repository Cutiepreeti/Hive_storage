

import '../../navigators/routes_management.dart';
import 'login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController
{
    final Presenter _presenter;


    var email=TextEditingController();
    var password=TextEditingController();
    Controller(this._presenter);

    //User LogIn
    // loginUser()
    // {
    //   var response=_presenter.loginUser(
    //     email: email.text,
    //     password: password.text,
    //   );
    //   // if (response!= null) {
    //     RouteManagement.goToUsers();
    //   // }
    // }

   //  getData()
   //  async{
   //    var response=await _presenter.getData();
   //    if(response!=null)
   //      {
   //        print('Controller:$response');
   //        var user=response;
   //        print(user.data!.email);
   //      }
   //    update();
   // }

    // void onInit()
    // async{
    //     await getData();
    //     super.onInit();
    // }

    /// jb hme single button se multiple values save krani ho
    void saveLoginvalue(){
      _presenter.saveLoginvalue(
          'email',
           email.text);

      _presenter.saveLoginvalue(
          'pass',
          password.text);
         //RouteManagement.goToUsers();
    }


    /// jb hme alg alg button se value save krani ho eg. key: email and its value: preetigloria@gmail.com
    void saveSingleKey(String key, String value){
      _presenter.saveLoginvalue(
          key,
          value);
    }

   getLoginvalue(String key)
  async {
      var value =await _presenter.getLoginvalue(key);
      print('$key is: $value');
      return value;
    }

    //  deleteLoginvalue(String key)
    // {
    //   //print(key);
    //   _presenter.deleteLoginvalue(key);
    // }

}