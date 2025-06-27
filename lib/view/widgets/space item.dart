import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/styles.dart';

Widget specItem(String iconPath, String label, bool isRow) {
  return isRow
      ? Row(
          children: [
            Image.asset(iconPath, height: 20),
            SizedBox(width: 6.w),
            Text(label, style: Styles.style14LightMontserrat),
          ],
        )
      : Column(
          children: [
            Image.asset(iconPath, height: 20),
            SizedBox(height: 6.h), // Change to height for Column
            Text(label, style: Styles.style14LightMontserrat),
          ],
        );
}