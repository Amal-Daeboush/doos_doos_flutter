import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customSpaces(String title,String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 2),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColors.primary),
      ),
      child: Padding(
        padding:  EdgeInsets.only(left: 8,right: 15,top: 5,bottom: 5),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
           title,
              style: Styles.style12.copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 5.h),
            Text(
             value,
              style: Styles.style12.copyWith(fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    ),
  );
}
