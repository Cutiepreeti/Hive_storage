
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