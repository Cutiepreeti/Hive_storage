

import 'package:api/domain/entities/enums.dart';
import 'package:api/domain/models/response_model.dart';
import 'api_wrapper.dart';

class ConnectHelper
{
  final apiwrapper= ApiWrapper();

  Future<ResponseModel> getData()
  async{
    var response=await apiwrapper.makeRequest(
        'api/users/2',
        Request.get,
        null,
    );
    //print('apiwrapper_response:$response');
    return response;
  }


    final apiGetUser= ApiGetUser();
   Future<ResponseModel>getUsers()
   async{
      var response=await apiGetUser.apiRequest(
        'api/users?page=2',
        Request.get,
        null,
      );
      return response;
   }
}