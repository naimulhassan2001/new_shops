import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_shops/views/screens/details%20product/details_product_screen.dart';
import 'package:new_shops/views/screens/payment%20method/payment_method_screen.dart';
import 'package:new_shops/views/screens/your_cart/your_cart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home: HomeScreen(),
      // home: DetailsProductScreen(),
      home: YourCartScreen(),
      // home: PaymentMethodScreen(),
    );
  }
}
