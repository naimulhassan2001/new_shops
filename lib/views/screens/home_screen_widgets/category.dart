
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.only(right: 60),
            height: 50,
            width: 70,
            color: Colors.green,
          ),
          Container(
            margin: EdgeInsets.only(right: 60),
            height: 50,
            width: 70,
            color: Colors.black12,
          ),
          Container(
            margin: EdgeInsets.only(right: 60),
            height: 50,
            width: 70,
            color: Colors.green,
          ),
          Container(
            margin: EdgeInsets.only(right: 60),
            height: 50,
            width: 70,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
