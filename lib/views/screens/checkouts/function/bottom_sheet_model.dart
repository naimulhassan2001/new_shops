

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_text.dart';

class BottomSheetModel {
  deliveryOptionSheet(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      title: "Select The delivery",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,),
                  IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.cancel_outlined,))
                ],
              ),
              const SizedBox(height: 16,),
              Column(
                children: [
                  CustomText(title: "Express", fontWeight: FontWeight.w600,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(title: "1-3 days delivery"),
                      CustomText(title: "\$1499", fontWeight: FontWeight.w600),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 16,),
              Column(
                children: [
                  CustomText(title: "Regular", fontWeight: FontWeight.w600,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(title: "2-4 days delivery"),
                      CustomText(title: "\$799", fontWeight: FontWeight.w600),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 16,),
              Column(
                children: [
                  CustomText(title: "Cargo", fontWeight: FontWeight.w600,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(title: "7-14 days delivery"),
                      CustomText(title: "\$299", fontWeight: FontWeight.w600),
                    ],
                  )
                ],
              ),





            ],
          ),
        );
      },
    );
  }

  NoResponseButtomSheet(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return Container(
          height: 340,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: SingleChildScrollView(
              child: Column(
                children: [

                ],
              ),
            ),
          ),
        );
      },
    );
  }
}