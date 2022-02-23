

import 'package:api/domain/models/api_listUser.dart';

import '../../../domain/models/api_model.dart';
import 'home.dart';
import 'package:get/get.dart';



class HomeController extends GetxController
{
  late HomePresenter _presenter;
  HomeController(this._presenter);

  // String name = '';
  User? data;
  List<Datum> listUser=[];
  Future<void> getData()
  async{
      var response=await _presenter.getData();
      if(response!=null)
      {
        //print('presenter_response:$response');
         data=response;
         //print(data);
         // id = data.data!.email!;
         // print(id);
         // print(data.data!.id);
        // print(data.data!.email);
        // print(data.data!.firstName);
        // print(data.data!.lastName);
        // name = data.data!.firstName!;
        update();
      }
      else{
        print('Error');
      }
      //update();
      //RouteManagement.goToUsers();
  }



  void onInit()
  async{
    await getData();
    update();
    super.onInit();
  }
}