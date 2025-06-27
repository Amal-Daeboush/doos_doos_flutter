import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/view/chat/widgets/bottom%20sheet/custom_row_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/constant/styles.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //  color: Colors.transparent,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.close, size: 20),
                ),
                Text(
                  'Share Content',
                  style: Styles.style18.copyWith(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w800,
                    color: AppColors.black4,
                  ),
                ),
                SizedBox(width: 30.w),
              ],
            ),
            SizedBox(height: 10),
            CustomRowBottomSheet(icon: Iconsax.camera, name: 'Camera'),
            Divider(color: Color(0xffF5F6F6), height: 1),
            SizedBox(height: 10),
            CustomRowBottomSheet(
              icon: Iconsax.document,
              name: 'Documents',
              sub: 'Share your files',
            ),
            Divider(color: Color(0xffF5F6F6), height: 1),
            SizedBox(height: 10),
            CustomRowBottomSheet(
              icon: Iconsax.camera,
              name: 'Create a poll',
              sub: 'Create a poll for any querry',
            ),
            Divider(color: Color(0xffF5F6F6), height: 1),
            SizedBox(height: 10),
            CustomRowBottomSheet(
              icon: Iconsax.user,
              name: 'Contact',
              sub: 'Share your contacts',
            ),
            Divider(color: Color(0xffF5F6F6), height: 1),
            SizedBox(height: 10),
            CustomRowBottomSheet(
              icon: Iconsax.camera,
              name: 'Media',
              sub: 'Share photos and videos',
            ),
         
            Divider(color: Color(0xffF5F6F6), height: 1),
            SizedBox(height: 10),
            CustomRowBottomSheet(
              icon: Icons.location_on_outlined,
              name: 'Location',
              sub: 'Share your location',
            ),
          ],
        ),
      ),
    );
  }
}
