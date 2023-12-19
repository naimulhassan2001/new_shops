
import 'package:flutter/material.dart';

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
            Text("Delivery address",style: TextStyle(color: Colors.black87, fontSize: 15),),
            Text("Salatiga City, Central Java")
          ],
        ),

        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none_outlined))
        ],
      ),


       bottomNavigationBar: const BottomNavBar(),


      /// body part
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchWidget(),

              // SizedBox(height: 50,),
              HomeScreenSilder(),
              // SizedBox(height: 50,),

               Text(("Category")),
               CategoryWidget(),

              Text("Recent Product"),
               RecentProductGirdView(),
            ],
          ),
        ),
      ),
    );
  }
}
