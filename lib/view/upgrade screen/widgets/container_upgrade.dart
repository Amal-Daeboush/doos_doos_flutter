import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerUpgrade extends StatelessWidget {
  const ContainerUpgrade({
    super.key,
    required this.isblack,
    required this.title,
    required this.price,
    required this.feuters,
  });

  final String feuters;
  final bool isblack;
  final int price;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: isblack ? AppColors.primary : AppColors.greyColor2,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                title,
                style: Styles.style14LightMontserrat.copyWith(
                  color: isblack ? AppColors.white : AppColors.primary,
                ),
              ),
            ),
            SizedBox(height: 5.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '$price \$',
                    style: Styles.style26.copyWith(
                      fontFamily: 'Montserrat',
                      color: isblack ? AppColors.white : AppColors.primary,
                    ),
                  ),
                  TextSpan(
                    text: ' /month',
                    style: Styles.style12.copyWith(
                      color: isblack ? AppColors.white : AppColors.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Divider(
              color: isblack ? AppColors.white : AppColors.primary,
              height: 3,
              thickness: 0.5,
            ),
            SizedBox(height: 10.h),
            Text(
              'Features',
              style: Styles.style10.copyWith(
                color: isblack ? AppColors.white : AppColors.primary,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Image.asset(
                  AppImageAsset.checked,
                  color: isblack ? AppColors.white : AppColors.primary,
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    feuters,
                    style: Styles.style10.copyWith(
                      color: isblack ? AppColors.white : AppColors.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
         //   SizedBox(height: 15.h),
      Spacer(),
            Center(
              child: Container(
                // width:issmall?null: HelperFunctions.screenWidth(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.r),
                  color: isblack ? AppColors.white : AppColors.primary,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    'Choose Plan',
                    style: Styles.style18.copyWith(
                      color: isblack ? AppColors.primary : AppColors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
