import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_shops/controllers/folder_controller.dart';
import 'package:new_shops/utils/app_string.dart';
import 'folder_list_screen/folder_list_screen.dart';
import 'widget/folder_item.dart';

class FolderScreen extends StatelessWidget {
  FolderScreen({super.key});

  FolderController folderController = Get.put(FolderController());

  List folder = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.yourFolder),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
          child: Obx(() => ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: folderController.folderList.length,
                itemBuilder: (context, index) {
                  var item = folderController.folderList[index];
                  return GestureDetector(
                    onTap: () {
                      Get.to(FolderListScreen(
                        folderName: item.folderName,
                      ));
                    },
                    child: FolderItem(
                        folderName: item.folderName,
                        note: item.note,
                        image: item.image),
                  );
                },
              ))),
    );
  }
}
