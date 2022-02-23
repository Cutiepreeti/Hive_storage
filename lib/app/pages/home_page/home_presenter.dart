

import 'package:api/domain/usecases/auth_usecases.dart';
import '../../../domain/models/api_listUser.dart';
import '../../../domain/models/api_model.dart';

class HomePresenter
{
  HomePresenter(this._authUseCase);
  late AuthUseCase _authUseCase;

  Future<User> getData()
  async
  {
    var user=await _authUseCase.getData();
    return user;
  }


}