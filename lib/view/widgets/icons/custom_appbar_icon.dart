import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget CustomAppBarIcon(void Function()? onTap, IconData? icon, bool padding) {
  return InkWell(
    focusColor: Colors.transparent,
    hoverColor: Colors.transparent,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    onTap: onTap,
    child: Container(
      width: 35.w,
      height: 35.h,
      decoration: BoxDecoration(
        color: AppColors.primary,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: padding ? 4 : 0),
          child: Icon(icon, color: AppColors.white, size: 15),
        ),
      ),
    ),
  );
}
