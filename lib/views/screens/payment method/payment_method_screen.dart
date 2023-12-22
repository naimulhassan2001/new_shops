import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_shops/views/widgets/custom_buton_outline.dart';
import 'package:new_shops/views/widgets/custom_text.dart';

import '../../../controllers/your_cart_controoler.dart';
import '../your_cart/widget/cart_item.dart';

class PaymentMethodScreen extends StatelessWidget {
  PaymentMethodScreen({super.key});

  CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment method"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Icon(Icons.shopping_cart_outlined),
                Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("5", style: TextStyle(fontSize: 14)),
                    ))
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            CustomText(title: "select existing card"),
            const SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  border: Border.all(color: Colors.black)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(child: CustomText(title: "**** **** **** 1934", color: Colors.black87,)),
                    const Icon(Icons.delete, size: 16, color: Color(0xFF939393)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 19,
            ),
            const Divider(),
            const SizedBox(
              height: 16,
            ),

            CustomText(title: "or input new card", fontSize: 18, fontWeight: FontWeight.w600),

            CustomText(title: "select existing card"),
            const SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  border: Border.all(color: Colors.black)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(child: CustomText(title: "**** **** **** ****", color: Colors.black87,)),
                    const Icon(Icons.delete, size: 16, color: Color(0xFF939393)),
                  ],
                ),
              ),
            ),
            
            
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              height: 14,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Order summary"),
                Icon(
                  Icons.keyboard_arrow_down_sharp,
                  size: 20,
                )
              ],
            ),
            SizedBox(
              height: 13,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Totals"), Text(r"$195524")],
            ),
            SizedBox(
              height: 19,
            ),
            CustomButtonOutLine(
                height: 45,
                backgroundColor: Color(0xFF67C4A7),
                title: "Select Payment Method",
                textColor: Colors.white,
                onTap: () {}),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
