
import 'package:api/data/data.dart';
import 'package:api/domain/domain.dart';

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
    return response;
  }


   Future<ResponseModel>getUsers()
   async{
      var response=await apiwrapper.makeRequest(
        'api/users?page=2',
        Request.get,
        null,
      );
      return response;
   }
}