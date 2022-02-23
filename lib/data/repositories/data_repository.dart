

import 'package:api/data/helpers/connect_helper.dart';
import 'package:api/domain/models/response_model.dart';
import 'package:api/domain/repositories/domain_repository.dart';

class DataRepository extends DomainRepository
{
   DataRepository (this._connectHelper);
   final ConnectHelper _connectHelper;

   @override
  Future<ResponseModel> getData()
  async{
    var response= await /*ConnectHelper()*/_connectHelper.getData();
    //print('ConnectHelper_response:$response');
    return response;
  }

   @override
  Future<ResponseModel>getUsers()
  async{
     var response=await _connectHelper.getUsers();
     // print('connect:${response.data}');
     return response;
  }

   @override
   void saveValue(String key,String value) {
    throw UnimplementedError();
  }

  @override
  Future<String?> getValue(String key)
  async{
    throw UnimplementedError();
  }

  @override
  void deleteAllValue() {
    throw UnimplementedError();
  }

  @override
   void saveLoginvalue(String key, dynamic value) {
    throw UnimplementedError();
  }

  @override
  Future<String?> getLoginvalue(String key)async{
     throw UnimplementedError();
  }

  @override
  void deleteLoginvalue(String key) {
    throw UnimplementedError();
  }


}