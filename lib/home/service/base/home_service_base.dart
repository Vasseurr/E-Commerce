import 'package:e_commerce/home/model/user.dart';

abstract class HomeServiceBase {
  Future<User> getUser();
}
