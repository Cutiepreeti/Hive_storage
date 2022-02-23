import 'package:api/domain/domain.dart';
import 'package:flutter/material.dart';

class AuthUseCase
{
  AuthUseCase(this._repository);
  late final Repository _repository;

  Future<User> getData()
  async {
     var user= await _repository.getData();
     //print('repository_response:$user');
     return user;
  }

  Future<ListUser>getUsers()
  async{
     var listUser=await _repository.getUsers();
     //print('Usecase:${listUser.data!.first.email}');
     return listUser;
  }

  void saveValue(String key,String value) {
      _repository.saveValue(
        key,
        value);
  }


  Future<String?> getValue(String key) async{
    var data= await _repository.getValue(key);
    debugPrint('Name is:$data');
    return data;
  }

   void deleteAllValue() {
     _repository.deleteAllValue();
  }

   void saveLoginvalue(String key,String value){
    // print(key);
    // print(value);
      _repository.saveLoginvalue(key, value);
  }

  Future<String?> getLoginvalue(String key)async{
    var data= await _repository.getLoginvalue(key);
    return data;
  }

  void deleteLoginvalue(String key){
    _repository.deleteLoginValue(key);
  }
}