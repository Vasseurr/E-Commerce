import 'package:e_commerce/home/model/user.dart';
import 'package:e_commerce/home/service/base/home_service_base.dart';
import 'package:e_commerce/home/service/home_service.dart';

class HomeRepository with HomeServiceBase {
  final HomeService _homeService;

  HomeRepository(this._homeService) : assert(_homeService != null);

  @override
  Future<User> getUser() async {
    return _homeService.getUser();
  }
}
