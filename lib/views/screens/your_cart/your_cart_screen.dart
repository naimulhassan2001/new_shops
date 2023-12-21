

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_shops/controllers/your_cart_controoler.dart';
import 'package:new_shops/views/screens/checkouts/function/bottom_sheet_model.dart';
import 'package:new_shops/views/screens/your_cart/widget/cart_item.dart';
import 'package:new_shops/views/widgets/custom_buton_outline.dart';
import 'package:new_shops/views/widgets/custom_text.dart';

import '../checkouts/checkokuts_screen.dart';

class YourCartScreen extends StatelessWidget {
  YourCartScreen({super.key});


  CartController cartController = Get.put(CartController()) ;
  BottomSheetModel bottomSheetModel = BottomSheetModel();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Cart"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            const Divider(),
            Row(
              children: [
                CustomText(title: "Delivery to", fontSize: 16,),
                const Spacer(),
                CustomText(title: "Salatiga City, Central java"),
                const Icon(Icons.keyboard_arrow_down_outlined)
              ],
            ),
            const Divider(),
            const SizedBox(height: 8,),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {

                  var item =cartController.cartList[index] ;

                  return CartItem(
                      name: item['name'],
                      image: item['image'],
                      variant: item['variant'],
                      price: item['price'],
                      quantity: item['quantity'],
                      ) ;
              },),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(title: "Totals"),
                CustomText(title: "\$ 00,0", fontWeight: FontWeight.w600,)
              ],
            ),
            const SizedBox(height: 16,),
            CustomButtonOutLine(title: "Continue for payments", onTap: (){
             Get.to(CheckoutScreen()) ;

            }, backgroundColor: const Color(0xFFF0F2F1),)


          ],
        ),
      ),
    );
  }
}
