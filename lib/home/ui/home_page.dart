import 'package:e_commerce/core/extension/context_extension.dart';
import 'package:e_commerce/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          search(),
          banner(context),
          SizedBox(
            height: context.getHeight * .03,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 4),
              itemBuilder: (context, index) {
                return foodCard(context);
              },
            ),
          )
        ],
      ),
    );
  }

  foodCard(BuildContext context) {
    return FittedBox(
      child: Column(
        children: [
          Container(
            width: context.getWidth * 0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.shade300),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                "assets/images/oliveoil.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 12.0),
            child: Text(
              "Olive oil",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  Container banner(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: context.getHeight * 0.02),
        height: context.getHeight * 0.2,
        width: context.getWidth,
        child: Image.asset(
          "assets/images/fresh.jpg",
          fit: BoxFit.cover,
        ));
  }

  Container search() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Expanded(
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.grey,
                )),
          ),
          Expanded(
            flex: 5,
            child: TextFormField(
              maxLines: 1,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Search for Products",
              ),
            ),
          )
        ],
      ),
    );
  }
}
