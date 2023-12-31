import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_shops/views/screens/details%20product/details_product_screen.dart';
import 'package:new_shops/views/widgets/custom_buton_outline.dart';

import '../../../controllers/searchControler.dart';

class RecentProductGirdView extends StatelessWidget {
  RecentProductGirdView({super.key});

  // List RecentProducts = [
  //   {"name" : }
  // ];
  SearchScreenController searchScreenController =
      Get.put(SearchScreenController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: searchScreenController.products.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 4/5,crossAxisCount: 2),
        itemBuilder: (context, index) {
          var product = searchScreenController.products[index];
          return GestureDetector(
            onTap: (){
              Get.to(DetailsProductScreen()) ;
            },
            child: Card(
              elevation: 0,
              child: Column(
                children: [
                  Expanded(
                    flex: 8,
                    child: Image.asset(
                      "${product['image']}",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        Text("${product['name']}"),
                        Text("${product['price']}"),
                        CustomButtonOutLine(
                            height: 45.h,
                            backgroundColor: const Color(0xFF67C4A7),
                            title: "Add To Cart",
                            textColor: Colors.white,
                            onTap: () {})
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
