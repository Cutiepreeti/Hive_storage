import 'package:api/domain/domain.dart';

class Presenter{

  Presenter(this._authUseCase);
  late final AuthUseCase _authUseCase;
        // loginUser({required String email,required String password})
        // {
        //   print(email);
        //   print(password);
        // }

       //  Future<User> getData()
       // async
       // {
       //    var res=await _authUseCase.getData();
       //    return res;
       // }
   void saveLoginvalue(String key,String value){
     //print(key);
     //print(value);
     _authUseCase.saveLoginvalue(key, value);
  }

  Future<String?> getLoginvalue(String key)async
  => await _authUseCase.getLoginvalue(key);

  // void deleteLoginvalue(String key){
  //    _authUseCase.deleteLoginvalue(key);
  // }
}
