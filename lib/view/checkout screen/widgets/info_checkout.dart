import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget InfoCheckout(IconData icon,String name,String sub) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      
      Icon(icon),
      SizedBox(width: 10.w),
      Expanded(
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: Styles.style14LightMontserrat.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10.h),
            Text(sub, style: Styles.style14LightMontserrat),
          ],
        ),
      ),
    ],
  );
}
