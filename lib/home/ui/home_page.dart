import 'package:e_commerce/core/components/widgets/food_card.dart';
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
                return FoodCard(
                 image: Image.asset(
                "assets/images/oliveoil.png",
                fit: BoxFit.cover,
              ),
              foodName: "Olive oil"
                );
              },
            ),
          )
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
