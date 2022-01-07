// ignore_for_file: prefer_const_constructors, unrelated_type_equality_checks

import 'package:e_commerce/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomScaffold extends StatefulWidget {
  Widget body;
  CustomScaffold({Key? key, required this.body}) : super(key: key);

  @override
  _CustomScaffoldState createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  final HomeController _homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        // appBar: appBar(context),
        //bottomNavigationBar:
        body: widget.body);
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      leading: backButton(),
      backgroundColor: Colors.deepOrangeAccent,
      automaticallyImplyLeading: false,
      title: Center(
          child: Text(
        "YE İÇ DOY",
      )),
    );
  }
}

class backButton extends StatelessWidget {
  backButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.format_align_left,
        color: Colors.white,
        size: 30,
      ),
      onPressed: () async {},
    );
  }
}
