import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_shops/views/widgets/custom_buton_outline.dart';

import '../../../controllers/your_cart_controoler.dart';
import '../your_cart/widget/cart_item.dart';

class PaymentMethodScreen extends StatelessWidget {
  PaymentMethodScreen({super.key});

  CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkouts"),
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  var item = cartController.cartList[index];

                  return ListTile(
                    leading: Image.asset("${item["image"]}"),
                    title: Text(item["name"]),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item["variant"]),
                        Text(
                          item["price"],
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    trailing: Text("quantity${item["quantity"]}"),
                  );
                },
              ),
            ),
            const Text("Hide Text"),
             SizedBox(height: 19,),
            Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  border: Border.all(color: Colors.black)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(child: Text("    Regular (2-4 days Delivery")),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),             SizedBox(height: 19,),

            Divider(),             SizedBox(height: 19,),

            Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  border: Border.all(color: Colors.black)),
              child: const Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "    Apply a Discounts",
                    style: TextStyle(color: Colors.black26),
                  ),
                  Icon(Icons.arrow_forward)
                ],
              )),
            ),             SizedBox(height: 19,),

            Divider(),             SizedBox(height: 19,),

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
            ),             SizedBox(height: 13,),


            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Totals"), Text(r"$195524")],
            ),
            SizedBox(height: 19,),

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
