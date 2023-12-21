
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_shops/views/screens/your_cart/your_cart_screen.dart';

import '../home_screen_widgets/bottom_nav_bar.dart';
import '../home_screen_widgets/category.dart';
import '../home_screen_widgets/home_screen_slider.dart';
import '../home_screen_widgets/recent_product_girdview.dart';
import '../home_screen_widgets/search_widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Delivery address",style: TextStyle(color: Colors.black87, fontSize: 14),),
            Text("Salatiga City, Central Java",style: TextStyle(fontSize: 19),)
          ],
        ),

        actions: [
          IconButton(onPressed: (){
            Get.to(YourCartScreen());
          }, icon: const Icon(Icons.shopping_cart)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none_outlined))
        ],
      ),


       bottomNavigationBar: const BottomNavBar(),


      /// body part
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchWidget(),

              // SizedBox(height: 50,),
              const HomeScreenSilder(),
              // SizedBox(height: 50,),

               const Text(("  Category")),
               const CategoryWidget(),

              const Text("  Recent Product"),
               RecentProductGirdView(),
            ],
          ),
        ),
      ),
    );
  }
}
