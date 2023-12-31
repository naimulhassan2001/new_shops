
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_shops/controllers/wishlist_controller.dart';
import 'package:new_shops/views/widgets/wishlist_item.dart';

import '../../../controllers/your_cart_controoler.dart';
import '../details product/details_product_screen.dart';
import '../your_cart/widget/cart_item.dart';


class WishlistScreen extends StatelessWidget {
  WishlistScreen({super.key});

  WishlistController wishlistController = Get.put(WishlistController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Wishlist"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: Column(
          children: [
            const Divider(),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 3,
                  itemBuilder: (context, index) {
                    var item = wishlistController.wishList[index];
                    return GestureDetector(
                      onTap: (){
                        Get.to(DetailsProductScreen());
                      },
                      child: ProductListItem(
                          name: item["name"],
                          image: item["image"],
                          variant: item["variant"],
                          price: item["price"]),
                    );
                  },),
            )
          ],
        ),
      ),
    );
  }
}
