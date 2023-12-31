import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_shops/views/screens/details%20product/details_product_screen.dart';
import 'package:new_shops/views/screens/home/home_screen.dart';
import 'package:new_shops/views/screens/home/inner_widget/bottom_nav_bar.dart';
import 'package:new_shops/views/screens/payment%20method/payment_method_screen.dart';
import 'package:new_shops/views/screens/search_screen/search_screen.dart';
import 'package:new_shops/views/screens/your_cart/your_cart_screen.dart';

import 'views/screens/checkouts/checkokuts_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: BottomNavBar(),
          //   home: SearchScreen(),
          // home: DetailsProductScreen(),
          //  home: YourCartScreen(),
          // home: PaymentMethodScreen(),
          // home: CheckoutScreen(),
        ) ;
      },
    );
  }
}
