import 'package:e_commerce/core/components/widgets/custom_scaffold.dart';
import 'package:e_commerce/home/controller/home_controller.dart';
import 'second_page.dart';
import 'temp1.dart';
import 'temp2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page.dart';
import 'temp3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Obx(() => IndexedStack(
            index: Get.find<HomeController>().bottomNavBarIndex,
            children: [
              HomePage(),
              SecondPage(),
              Temp1(),
              Temp2(),
              Temp3(),
            ],
          )),
    );
  }
}
