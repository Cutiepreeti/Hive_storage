import 'package:api/app/app.dart';
import 'package:api/domain/domain.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
{
  HomeController(this._presenter);
  late final HomePresenter _presenter;

  // String name = '';
  // User? data;
   List<Datum> listUser=[];



   Future<List<Datum>> getUsers(dynamic http)
   async{
      var response= await _presenter.getUsers(http);
      listUser= response.data!;
      //print(listUser.first.id);
     update();
     return listUser;
   }
  // Future<void> getData()
  // async{
  //     var response=await _presenter.getData();
  //     // if(response!=null)
  //     // {
  //       //print('presenter_response:$response');
  //        data=response;
  //        //print(data);
  //        // id = data.data!.email!;
  //        // print(id);
  //        // print(data.data!.id);
  //       // print(data.data!.email);
  //       // print(data.data!.firstName);
  //       // print(data.data!.lastName);
  //       // name = data.data!.firstName!;
  //       update();
  //     // }
  //     // else{
  //     //   debugPrint('Error');
  //     // }
  //     //update();
  //     //RouteManagement.goToUsers();
  // }



  int? index;

   Future<void> saveIndexValue() async {
     index = Get.arguments['index'] as int;
     update();
   }

  @override
  void onInit()
  async{
    await saveIndexValue();
    //print('index is: $index');
   // await getUsers(http);
    super.onInit();
  }
}