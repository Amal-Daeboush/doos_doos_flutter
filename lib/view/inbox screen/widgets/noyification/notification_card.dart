import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
    
      children: [
        CircleAvatar(
          radius: 25.r,
          backgroundImage: AssetImage(AppImageAsset.logo),
        ),
        SizedBox(width: 5.w),
        Expanded(
          child: Text(
            'Your booking is confirmed! Booking ID: #12345. Get ready to pick up your car on [date].',
            style: Styles.style12,
          ),
        ),
      ],
    );
  }
}
