import 'package:api/domain/models/api_model.dart';
import 'package:api/domain/usecases/auth_usecases.dart';
import 'package:flutter/cupertino.dart';

class Presenter{

  Presenter(this._authUseCase);
  late AuthUseCase _authUseCase;
        // loginUser({required String email,required String password})
        // {
        //   print(email);
        //   print(password);
        // }

       //  Future<User> getData()
       // async
       // {
       //    var res=await _authUseCase.getData();
       //    return res;
       // }
   void saveLoginvalue(String key,dynamic value){
     //print(key);
     //print(value);
     _authUseCase.saveLoginvalue(key, value);
  }

  Future<String?> getLoginvalue(String key)async{
          //print(key);
          return await _authUseCase.getLoginvalue(key);
  }

  // void deleteLoginvalue(String key){
  //    _authUseCase.deleteLoginvalue(key);
  // }
}
