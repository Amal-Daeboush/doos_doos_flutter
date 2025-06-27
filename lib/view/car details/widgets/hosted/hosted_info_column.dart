import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/view/widgets/icons/custom_appbar_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/constant/styles.dart';

class HostedInfoColumn extends StatelessWidget {
  const HostedInfoColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.greyColor7,
              radius: 50.r,
              child: Icon(Icons.person, color: Colors.white),
            ),
            Positioned(
              bottom: -4,
              right: -1,
              child: CustomAppBarIcon(() {}, Iconsax.message_text_1, false),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.star, size: 20, color: AppColors.yellow),
            SizedBox(width: 2),
            Text(
              '5.0',
              style: Styles.style12.copyWith(color: AppColors.primary),
            ),
          ],
        ),
        Text(
          'Amir Samy',
          style: Styles.style14LightMontserrat.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.only(top: 4.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '20 Rental',
                style: Styles.style12.copyWith(fontWeight: FontWeight.w800),
              ),
              SizedBox(width: 30.w),
              Text(
                'Joined Jan 28',
                style: Styles.style12.copyWith(fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
