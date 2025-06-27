import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart'
    show CustomButtons;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.greyColor2,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'GLA 250 SUV ',
                    style: Styles.style14LightMontserrat.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    '20 Dec 2025 , 3 PM',
                    style: Styles.style12.copyWith(color: AppColors.greyColor16),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButtons(
                        border: AppColors.primary,
                        title: 'Accept',
                        isBlack: true,
                        issmall: true,
                      ),
                      SizedBox(width: 10.w),
                      CustomButtons(
                        border: AppColors.primary,
                        title: 'Reject',
                        isBlack: false,
                        issmall: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Image.asset(AppImageAsset.car, width: 140.w, height: 80.h),
          ],
        ),
      ),
    );
  }
}
