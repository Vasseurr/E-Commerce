import 'package:e_commerce/core/pages/login_page.dart';
import 'package:e_commerce/home/bindings/home_binding.dart';
import 'package:e_commerce/home/ui/home.dart';
import 'package:e_commerce/home/ui/home_page.dart';
import 'package:e_commerce/home/ui/second_page.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL,
        page: () => const SecondPage(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.LOGIN,
        page: () => const LoginPage(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.SECOND,
        page: () => const SecondPage(),
        binding: HomeBinding()),
  ];
}
