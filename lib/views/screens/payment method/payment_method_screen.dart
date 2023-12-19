


import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

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
      body: Column(
        children: [

        ],
      ),
    );
  }
}
