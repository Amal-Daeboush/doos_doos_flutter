import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget CustomColumnText() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Find the Perfect ',
            style: Styles.style30.copyWith(fontWeight: FontWeight.w700,fontSize: 28.sp),
          ),
          SizedBox(width: 20.h),
          const Expanded(
            child: Divider(color: AppColors.primary,  ),
          ),
        ],
      ),
      SizedBox(height: 10.h),
      Text(
        'Car for Your Next Trip!',
        style: Styles.style30.copyWith(fontWeight: FontWeight.w700,fontSize: 28.sp),
      ),
    ],
  );
}
