import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_shops/utils/app_string.dart';

import '../../../../controllers/folder_controller.dart';
import '../../../../models/folder_model.dart';

class FolderCreateDialog {
  createFolder(
    BuildContext context,
    String name,
    String image,
    String price,
  ) {
    FolderController folderController = Get.put(FolderController());
    TextEditingController folderNameController = TextEditingController();
    TextEditingController noteController = TextEditingController();

    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(AppString.createFolder),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: folderNameController,
                  decoration: InputDecoration(
                      labelText: AppString.folderName,
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r)))),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextField(
                  controller: noteController,
                  decoration: InputDecoration(
                      labelText: AppString.note,
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r)))),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text(AppString.cancel)),
            TextButton(
                onPressed: () {
                  var data = FolderModel(
                      folderName: folderNameController.text,
                      productName: name,
                      image: image,
                      variant: "Gray",
                      price: price,
                      note: noteController.text);
                  folderController.folderList.add(data);

                  Get.back();
                },
                child: const Text(AppString.create)),
          ],
        );
      },
    );
  }
}
