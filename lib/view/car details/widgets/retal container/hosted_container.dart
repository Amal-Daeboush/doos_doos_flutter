import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/car%20details/view/hosted_screen.dart';
import 'package:doss_doss/view/car%20details/widgets/retal%20container/retal_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HostedContainer extends StatelessWidget {
  final void Function()? onTap;
  const HostedContainer({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return RetalContainer(
      title: 'Hosted By',
      onTap:
          () => Get.to(
            () => HostedScreen(),
            transition: Transition.downToUp,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeOut,
          ),
      button: 'Read more',
      widget: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.greyColor7,
              radius: 24.r,
              child: Icon(Icons.person, color: Colors.white), // صورة مؤقتة
            ),
            Positioned(
              bottom: -4,
              right: -4,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, size: 12, color: AppColors.yellow),
                    SizedBox(width: 2),
                    Text(
                      '5.0',
                      style: Styles.style10.copyWith(color: AppColors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        title: Text(
          'Amir Samy',
          style: Styles.style12.copyWith(fontWeight: FontWeight.w600),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: 4.h),
          child: Row(
            children: [
              Text(
                '20 Rental',
                style: Styles.style12.copyWith(fontWeight: FontWeight.w800),
              ),
              SizedBox(width: 30.w),
              Text('Joined Jan 28', style: Styles.style10),
            ],
          ),
        ),
      ),
    );
  }
}
