import 'package:dio/dio.dart';
import 'package:e_commerce/home/controller/home_controller.dart';
import 'package:e_commerce/home/repository/home_repository.dart';
import 'package:e_commerce/home/service/home_service.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController(HomeRepository(HomeService(Dio())));
    });
  }
}
