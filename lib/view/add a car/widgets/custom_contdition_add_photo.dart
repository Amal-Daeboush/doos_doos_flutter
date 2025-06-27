import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

Widget customConditionAddPhoto(String title, bool isNote) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10.h),
    child: Row(
      children: [
      isNote?Icon(Iconsax.info_circle,color: AppColors.red,)  :Image.asset(AppImageAsset.checked),
        Text(
          title,
          style: Styles.style14LightMontserrat.copyWith(
            color: isNote ? AppColors.red : AppColors.primary,
          ),
        ),
      ],
    ),
  );
}
