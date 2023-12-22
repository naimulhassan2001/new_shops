


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_shops/views/screens/payment%20method/payment_method_screen.dart';

import '../../../controllers/your_cart_controoler.dart';
import '../../widgets/custom_buton_outline.dart';
import '../../widgets/custom_text.dart';
import '../your_cart/widget/cart_item.dart';
import 'function/bottom_sheet_model.dart';

class CheckoutScreen extends StatelessWidget {
  CheckoutScreen({super.key});



  CartController cartController = Get.put(CartController()) ;
  BottomSheetModel bottomSheetModel = BottomSheetModel();






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkouts"),
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
                    checkBox: false,

                  ) ;
                },),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(title: "hide list", color: Colors.green),
              ],
            ),
            const SizedBox(height: 16,),

            GestureDetector(
              onTap: (){
                bottomSheetModel.deliveryOptionSheet(context) ;

              },
              child: Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color:  Color(0xFFD9D9D9)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("select the delivery option",
                        style: TextStyle(
                          color: Color(0xFF939393),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        )

                    ),
                    Icon(Icons.arrow_forward_ios_sharp, size: 12,)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16,),
            const Divider(),
            const SizedBox(height: 16,),


            GestureDetector(
              onTap: (){
                bottomSheetModel.deliveryOptionSheet(context) ;

              },
              child: Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color:  Color(0xFFD9D9D9)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Apple discount",
                        style: TextStyle(
                          color: Color(0xFF939393),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        )

                    ),
                    Icon(Icons.arrow_forward_ios_sharp, size: 12,)
                  ],
                ),
              ),
            ),


            const SizedBox(height: 16,),

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
              Get.to(PaymentMethodScreen());

            }, backgroundColor: const Color(0xFFF0F2F1),),
            

            
            




          ],
        ),
      ),
    );
  }
}
