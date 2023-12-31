import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_shops/utils/app_icons.dart';
import 'package:new_shops/utils/app_string.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.w),
      child: SizedBox(
        height: 80.h,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 22.w, left: 8.w),
                  height: 50.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: const Color(0xFFEDF7FF),
                  ),
                  child: Image.asset(AppIcon.fashion),
                ),
                const Text(AppString.apparel)
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 25.w),
                  height: 50.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: const Color(0xFFEDF7FF),
                  ),
                  child: Image.asset(AppIcon.fashion2),
                ),
                const Text(AppString.school)
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 25.w),
                  height: 50.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: const Color(0xFFFFEDDD),
                  ),
                  child: Image.asset(AppIcon.fashion3),
                ),
                const Text(AppString.sports)
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 25.w),
                  height: 50.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: const Color(0xFFFFEDDD),
                  ),
                  child: Image.asset(AppIcon.fashion4),
                ),
                const Text(AppString.electronic)
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 25.w),
                  height: 50.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: const Color(0xFFFFEDDD),
                  ),
                  child: Image.asset(AppIcon.all),
                ),
                Container(
                    margin: EdgeInsets.only(left: 6.w),
                    child: const Text(
                      AppString.more,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
