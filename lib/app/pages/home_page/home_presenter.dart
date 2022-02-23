import 'package:api/domain/domain.dart';

class HomePresenter
{
  HomePresenter(this._authUseCase);
  late final AuthUseCase _authUseCase;

  Future<User> getData()
  async
  {
    var user=await _authUseCase.getData();
    return user;
  }


}