import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String? image;
  final IconData? icon;
  final void Function()? onPressed;
  const ProfileCard({
    super.key,
    required this.name,
    this.icon,
    this.onPressed,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.greyColor),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            children: [
              icon == null ? Image.asset(image!,color: AppColors.black4,height: 20.h,fit: BoxFit.cover,) : Icon(icon),
              SizedBox(width: 10.w),
              Text(
                name,
                style: Styles.style14LightMontserrat.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: onPressed,
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.primary,
                  size: 20.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
