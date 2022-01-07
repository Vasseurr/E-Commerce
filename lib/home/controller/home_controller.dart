import 'package:e_commerce/core/constants/hive_keys.dart';
import 'package:e_commerce/core/init/cache/hive_manager.dart';
import 'package:e_commerce/home/repository/home_repository.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class HomeController extends GetxController {
  final HomeRepository _repository;
  final RxString _userName = "".obs;
  HomeController(this._repository) : assert(_repository != null);
  final _bottomNavBarIndex = 0.obs;

  set userName(value) => _userName.value = value;
  get userName => _userName.value;

  set bottomNavBarIndex(value) => _bottomNavBarIndex.value = value;
  get bottomNavBarIndex => _bottomNavBarIndex.value;

  getUser() async {
    var result = await _repository.getUser();
    _userName.value = result.name!;
  }

  changeValue() {
    userName = "Template";
  }

  saveUser() async {
    HiveManager.setStringValue(HiveKeys.USERNAME, userName);
  }

  getFromHiveManager() {
    return HiveManager.getStringValue(HiveKeys.USERNAME);
  }
}
