

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:new_shops/views/widgets/custom_text.dart';

class CartItem extends StatelessWidget {
  CartItem({
    super.key,
    required this.name,
    required this.image,
    required this.variant,
    required this.price,
    required this.quantity,
    this.checkBox = true


  });


  String image ;
  String name ;
  String variant ;
  String price ;
  String quantity ;
  RxBool isChecked = false.obs;
  bool checkBox ;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Center(  child: checkBox ? Expanded(
              flex: 1,
              child: Obx(() => Checkbox(
                activeColor: Colors.green,
                  value: isChecked.value,
                  onChanged: (value){
                isChecked.value = value! ;
              })),
            ) : null,
          ),
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
                  const Spacer(),
                  Row(
                    children: [
                      CustomText(title: "\$ $price"),
                      Spacer(),


                      Center(
                        child: checkBox ?Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                width: 18,
                                height: 18,
                                decoration: const ShapeDecoration(
                                  color: Colors.white,
                                  shape: OvalBorder(
                                    side:
                                    BorderSide(width: 1, color: Color(0xFF939393)),
                                  ),
                                ),
                                child: const Icon(Icons.remove, color: Color(0xFF939393), size: 16,)),
                            const SizedBox(width: 8,),

                            CustomText(title: quantity),
                            const SizedBox(width: 8,),


                            Container(
                                width: 18,
                                height: 18,
                                decoration: const ShapeDecoration(
                                  color: Colors.white,
                                  shape: OvalBorder(
                                    side:
                                    BorderSide(width: 1, color: Color(0xFF939393)),
                                  ),
                                ),
                                child: const Icon(Icons.add, color: Color(0xFF939393), size: 16,)),
                            const SizedBox(width: 8,),

                            Container(
                                width: 24,
                                height: 24,
                                decoration: const ShapeDecoration(
                                  color: Colors.white,
                                  shape: OvalBorder(
                                    side:
                                    BorderSide(width: 1, color: Color(0xFF939393)),
                                  ),
                                ),
                                child: const Icon(Icons.delete_outlined, color: Color(0xFF939393), size: 16,)),
                          ],
                        ) : const Text("1 quantity"),
                      )




                    ],
                  )

                ],
              ))
        ],

      ),
    );
  }
}
