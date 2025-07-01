import 'dart:io';

import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AddPhotoWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final Rxn<File> selectedImage;
  final String? imageUrl;

  const AddPhotoWidget({
    Key? key,
    this.onTap,
    required this.selectedImage,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Obx(() {
        Widget child;

        if (selectedImage.value != null) {
          // صورة مختارة جديدة
          child = Image.file(
            selectedImage.value!,
            fit: BoxFit.cover,
            width: 100,
            height: 100,
          );
        } else if (imageUrl != null && imageUrl!.isNotEmpty && imageUrl!='') {
          // صورة من API فقط عرض، بدون تغيير في selectedImage
          child = Image.asset(
            AppImageAsset.apple,
            // 'http://192.168.1.12:8000/$imageUrl!' ,
            fit: BoxFit.cover,
            width: 100,
            height: 100,
            errorBuilder:
                (context, error, stackTrace) =>
                    Icon(Iconsax.gallery_export, size: 50.sp),
          );
        } else {
          // لا صورة، الأيقونة فقط
          child = Icon(Iconsax.gallery_export, size: 50.sp);
        }

        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.greyColor),
          ),
          width: 100,
          height: 100,
          child: Padding(padding: const EdgeInsets.all(10.0), child: child),
        );
      }),
    );
  }
}
