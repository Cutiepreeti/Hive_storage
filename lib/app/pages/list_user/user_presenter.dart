
import 'dart:async';

import 'package:api/domain/domain.dart';
import 'package:api/domain/models/api_listUser.dart';

class UserPresenter
{
  UserPresenter(this._authUseCase);
  late AuthUseCase _authUseCase;

   Future<ListUser>getUser()
   async{
      var listUser=await _authUseCase.getUsers();
      //print('Presenter:${listUser.data!.first.lastName}');
      return listUser;
   }

  void saveValue(String key,String value) {
    _authUseCase.saveValue(key,value);

  }

  Future<String?> getValue(String key)
  async{
    return await _authUseCase.getValue(key);
   }

   deleteAllValue() {
     _authUseCase.deleteAllValue();
  }

  Future<String?> getLoginvalue(String key)async{
    //print(key);
    return await _authUseCase.getLoginvalue(key);
  }

  void deleteLoginvalue(String key){
    _authUseCase.deleteLoginvalue(key);
  }


}