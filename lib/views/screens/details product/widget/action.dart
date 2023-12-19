

import 'package:flutter/material.dart';

import '../../../widgets/custom_buton_outline.dart';
import '../../../widgets/custom_button.dart';

class ProductAction extends StatelessWidget {
  const ProductAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomButton(
            title: "Add to Cart",
            onTap: () {},
            fixWidth: true,
            width: 160),
        CustomButtonOutLine(
            title: "Buy Now",
            onTap: () {},
            fixWidth: true,
            width: 160),
      ],
    )
    ;
  }
}
