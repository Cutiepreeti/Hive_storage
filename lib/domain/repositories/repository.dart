import 'package:api/data/data.dart';
import 'package:api/device/device.dart';
import 'package:api/domain/domain.dart';



class Repository {
  Repository(this._dataRepository, this._deviceRepository);

  final DataRepository _dataRepository;
  final DeviceRepository _deviceRepository;

  Future<User> getData() async {
    try {
      var response = await /*DataRepository()*/_dataRepository.getData();
      var user = userFromJson(response.data);
      //print(user.data!.email);
      //print('data_repository_response:$user');
      return user;
    }
    catch (_) {
      var response = await /*DeviceRepository()*/_deviceRepository.getData();
      var user = userFromJson(response.data);
      return user;
    }
  }

  Future<ListUser>getUsers()
    async{
    try {
      var response=await _dataRepository.getUsers();
      //print(response.data);
      var listUser = listUserFromJson(response.data);
      //print('data:${listUser.data}');
      //var listUser=ListUser.fromJson(jsonDecode(response.data));
      //print('Repository:${listUser.data!.first.firstName}');
      return listUser;
    }
    catch (_) {
      var response=await _deviceRepository.getUsers();
      var listUser= listUserFromJson(response.data);
      return listUser;
    }
  }


   void saveValue(String key,String value)
  {
    try{
       _deviceRepository.saveValue(
        key,
        value,
      );
    }
    catch(_)
    {
       _dataRepository.saveValue(
        key,
        value,
      );
    }
  }


  Future<String?> getValue(String key) {
    try {
      return _deviceRepository.getValue(key);
    }
    catch (_) {
      return _dataRepository.getValue(key);
    }
  }

   void deleteAllValue()
  {
    try{
       _deviceRepository.deleteAllValue();
    }
    catch(_)
    {
       _dataRepository.deleteAllValue();
    }
  }

  void saveLoginvalue(String key,String value){
    try{
       _deviceRepository.saveLoginvalue(key, value);
       //print(value);
    }
    catch(_){
      _dataRepository.saveLoginvalue(key,value);
    }
  }

  Future<String?> getLoginvalue(String key)async{
    try{
      return await _deviceRepository.getLoginvalue(key);
    }
    catch(_)
    {
      return await _dataRepository.getLoginvalue(key);
    }
  }

  void deleteLoginValue(String key){
    try{
      _deviceRepository.deleteLoginvalue(key);
    }
    catch(_)
    {
      _dataRepository.deleteLoginvalue(key);
    }
  }
}