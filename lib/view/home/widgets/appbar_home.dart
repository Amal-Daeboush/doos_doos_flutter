import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/constant/styles.dart';



Widget AppbarHome() {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 16), // padding ثابت
    leading: SizedBox(
      width: 30, // حدد عرض للـ leading
      height: 30,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primary),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(Iconsax.location, color: AppColors.primary, size: 18),
        ),
      ),
    ),
    trailing: Container(
      decoration: BoxDecoration(
        color: AppColors.greyColor2,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        child: Icon(Iconsax.notification, color: AppColors.primary, size: 18),
      ),
    ),
    title: Text('Location', style: Styles.style14LightMontserrat),
    subtitle: Text(
      'UAE, Sharjah',
      style: Styles.style16Montserrat.copyWith(fontWeight: FontWeight.w600),
    ),
  );
}
