import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(  hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
        onTap:
            () => Get.back(
           //   ChatScreen(),
              
            ),
          child: Icon(Icons.arrow_back)),
        SizedBox(width: 5.w),
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(backgroundColor: AppColors.greyColor11, radius: 25.r),
            Positioned(
              bottom: 2,
              right: 3,
              child: Container(
                width: 12.w,
                height: 12.h,
                decoration: BoxDecoration(
                  color: AppColors.green,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Amir Samy', style: Styles.style16),
            SizedBox(height: 5.h),
            Text(
              'Active now',
              style: Styles.style12.copyWith(color: AppColors.greyColor12),
            ),
          ],
        ),
        Spacer(),
        Icon(Iconsax.call),
        SizedBox(width: 10.w),
        Icon(Iconsax.video),
      ],
    );
  }
}
