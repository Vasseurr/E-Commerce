import 'package:e_commerce/core/components/buttons/custom_button.dart';
import 'package:e_commerce/core/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  double initialRating = 3.0;
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.orangeAccent.shade100, Colors.white])),
        child: Column(
          children: [
            mainMenu(context),
            bottomMenu(context),
          ],
        ),
      ),
    );
  }

  Expanded bottomMenu(BuildContext context) {
    return Expanded(
      child: Container(
          padding: const EdgeInsets.all(20),
          width: context.getWidth,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.topLeft,
                  colors: [
                Colors.orangeAccent.shade100,
                Colors.deepOrangeAccent.shade200
              ])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Price",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "\$14.99",
                    style: TextStyle(color: Colors.blue.shade900, fontSize: 24),
                  )
                ],
              ),
              addtoCardButton(context)
            ],
          )),
    );
  }

  InkWell addtoCardButton(BuildContext context) {
    return InkWell(
      child: Container(
        height: context.getHeight * 0.15,
        width: context.getWidth * 0.4,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.greenAccent.shade700, Colors.green.shade400]),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
            child: Text(
          "Add to Cart",
          style: TextStyle(color: Colors.white, fontSize: 22),
        )),
      ),
    );
  }

  Expanded mainMenu(BuildContext context) {
    return Expanded(
      flex: 6,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            buttons(context),
            image(context),
            infos(context),
          ],
        ),
      ),
    );
  }

  Container infos(BuildContext context) {
    String description =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. " +
            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of " +
            "type and scrambled it to make a type specimen book. It has survived not only five centuries, " +
            "but also the leap into electronic typesetting, remaining essentially unchanged.";
    return Container(
      margin: EdgeInsets.only(
          top: context.getHeight * 0.6,
          left: context.getWidth * 0.05,
          right: context.getWidth * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Orange Fruit",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          values(context),
          const SizedBox(height: 20),
          const Text("Description",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          Text(
            description,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Row values(BuildContext context) {
    return Row(
      children: [
        rating(),
        rateValue(context),
        const Spacer(),
        addDeleteButton(1),
        const SizedBox(width: 10),
        Text(count.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
        const SizedBox(width: 10),
        addDeleteButton(2),
      ],
    );
  }

  Container rateValue(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: context.getWidth * 0.02),
      child: Text(
        "(" + initialRating.toString() + ")",
        style: const TextStyle(color: Colors.grey, fontSize: 18),
      ),
    );
  }

  Container addDeleteButton(int type) {
    return Container(
      decoration: BoxDecoration(
          gradient: type == 1
              ? const LinearGradient(colors: [Colors.greenAccent, Colors.green])
              : LinearGradient(
                  colors: [Colors.grey.shade100, Colors.grey.shade400]),
          shape: BoxShape.circle),
      child: IconButton(
          onPressed: () {
            if (type == 1) {
              setState(() {
                count++;
              });
            } else {
              if (count > 0) {
                setState(() {
                  count--;
                });
              }
            }
          },
          icon: Icon(
            type == 1 ? Icons.add : Icons.remove,
            color: type == 1 ? Colors.white : Colors.green,
            size: type == 1 ? 24 : 30,
          )),
    );
  }

  RatingBar rating() {
    return RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 25,
      itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        setState(() {
          initialRating = rating;
        });
      },
    );
  }

  Padding image(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: context.getHeight * 0.1),
      child: Image.asset(
        "assets/images/orange.png",
        width: context.getWidth,
        height: context.getHeight * 0.5,
      ),
    );
  }

  Container buttons(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: context.height * 0.05,
          left: context.getWidth * 0.07,
          right: context.getWidth * 0.07),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.keyboard_arrow_left,
                size: 30,
                color: Colors.orangeAccent,
              )),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.orangeAccent,
              )),
        )
      ]),
    );
  }
}
