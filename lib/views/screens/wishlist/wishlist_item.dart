import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:new_shops/views/widgets/custom_text.dart';


class WishlistItem extends StatelessWidget {
  WishlistItem({
    super.key,
    required this.name,
    required this.image,
    required this.variant,
    required this.price,
  });


  String image ;
  String name ;
  String variant ;
  String price ;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Image.asset(image) ),
          const SizedBox(width: 16,),
          Expanded(
              flex: 7,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      name,
                      maxLines: 1,
                      style: const TextStyle(
                          color: Color(0xFF393F42),
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  CustomText(title: "Variant: $variant", color: const Color(0xFF939393)),
                  // const Spacer(),
                  Row(
                    children: [
                      CustomText(title: "\$ $price"),
                      Spacer(),
                    ],
                  )

                ],
              ))
        ],

      ),
    );
  }
}