import 'package:api/domain/models/api_listUser.dart';
import 'package:get/get.dart';
import 'list_user.dart';

class UserController extends GetxController
{
  UserController(this._userPresenter);
  late final UserPresenter _userPresenter;

  String? value;
  List<Datum> listUser=[];


  getUsers()
   async{
        var response=await _userPresenter.getUser();
        if(response!=null)
          {
            listUser = response.data!;
            //print(listUser.first.firstName);
            update();
            return listUser;
          }
        throw UnimplementedError();
   }

 void saveValue(String key,String value) {
    _userPresenter.saveValue(key,value);

}

void getValue(String key) {
   _userPresenter.getValue(key);

}

deleteAllValue() {
   _userPresenter.deleteAllValue();
}

  getLoginvalue(String key)
  async {
    var value =await _userPresenter.getLoginvalue(key);
    print('$key is: $value');
    return value;
  }

  deleteLoginvalue(String key)
  {
    //print(key);
    _userPresenter.deleteLoginvalue(key);
  }

  @override
  void onInit()
   {
     getUsers();
     super.onInit();
   }
}

