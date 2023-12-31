import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_shops/controllers/folder_controller.dart';
import 'package:new_shops/models/folder_model.dart';
import 'package:new_shops/views/screens/details%20product/details_product_screen.dart';
import 'package:new_shops/views/screens/home/function/create_folder_dailog.dart';

import '../../../../controllers/searchControler.dart';

class RecentProductGirdView extends StatelessWidget {
  RecentProductGirdView({super.key});

  SearchScreenController searchScreenController =
      Get.put(SearchScreenController());

  FolderController folderController = Get.put(FolderController());

  FolderCreateDialog folderCreateDialog = FolderCreateDialog();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: searchScreenController.products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 4 / 5, crossAxisCount: 2),
        itemBuilder: (context, index) {
          var product = searchScreenController.products[index];
          var image = product['image'];
          var name = product['name'];
          var price = product['price'];

          return GestureDetector(
            onTap: () {
              Get.to(DetailsProductScreen());
            },
            child: Card(
              elevation: 0,
              child: Column(
                children: [
                  Expanded(
                    flex: 8,
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        Text(name),
                        Text(price),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: CircleAvatar(
                                    radius: 20.r,
                                    backgroundColor: Colors.black12,
                                    child: const Icon(Icons.favorite_border))),
                            IconButton(
                                onPressed: () {
                                  folderCreateDialog.createFolder(
                                      context, name, image, price);
                                },
                                icon: CircleAvatar(
                                    radius: 20.r,
                                    backgroundColor: Colors.black12,
                                    child: const Icon(Icons.edit_calendar))),
                          ],
                        )
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
