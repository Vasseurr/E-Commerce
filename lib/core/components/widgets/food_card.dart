import 'package:e_commerce/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  Image image;
  String foodName;
  FoodCard({Key? key, required this.image, required this.foodName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        children: [
          Container(
            width: context.getWidth * 0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.shade300),
            child: Padding(padding: const EdgeInsets.all(12.0), child: image),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 12.0),
            child: Text(
              foodName,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
