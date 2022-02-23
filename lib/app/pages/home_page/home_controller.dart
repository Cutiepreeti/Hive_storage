import 'package:api/app/app.dart';
import 'package:api/domain/domain.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
{
  HomeController(this._presenter);
  late final HomePresenter _presenter;

  // String name = '';
  User? data;
  List<Datum> listUser=[];
  Future<void> getData()
  async{
      var response=await _presenter.getData();
      // if(response!=null)
      // {
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
      // }
      // else{
      //   debugPrint('Error');
      // }
      //update();
      //RouteManagement.goToUsers();
  }



  @override
  void onInit()
  async{
    await getData();
    super.onInit();
  }
}