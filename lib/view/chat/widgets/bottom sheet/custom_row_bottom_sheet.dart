import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRowBottomSheet extends StatelessWidget {
  final IconData icon;
  final String? sub;
  final String name;
  const CustomRowBottomSheet({
    super.key,
    required this.icon,
    required this.name,
    this.sub,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.greyColor2,
            ),
            child: Center(child: Icon(icon, color: AppColors.greyColor12)),
          ),
          SizedBox(width: 15.w),
          Column(  mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Styles.style14LightMontserrat.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.black4,
                ),
              ),
              SizedBox(height: 5.w),
              Text(
                sub?? '',
                style: Styles.style12.copyWith(
                  color: AppColors.greyColor12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
