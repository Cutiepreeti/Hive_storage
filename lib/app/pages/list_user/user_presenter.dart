
import 'dart:async';
import 'package:api/domain/domain.dart';
import 'package:http/http.dart' as http;

class UserPresenter
{
  UserPresenter(this._authUseCase);
  late final AuthUseCase _authUseCase;

   Future<ListUser>getUser(dynamic http)
   async{
      var listUser=await _authUseCase.getUsers(http);
      //print('Presenter:${listUser.data!.first.lastName}');
      return listUser;
   }

  void saveValue(String key,String value) {
    _authUseCase.saveValue(key,value);

  }

  Future<String?> getValue(String key)
  async =>
      await _authUseCase.getValue(key);

  void deleteAllValue() {
     _authUseCase.deleteAllValue();
  }

  Future<String?> getLoginvalue(String key)async =>
      await _authUseCase.getLoginvalue(key);

  void deleteLoginvalue(String key){
    _authUseCase.deleteLoginvalue(key);
  }


}