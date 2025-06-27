import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/model/car_brand_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBrand extends StatelessWidget {
  final CarBrandModel carBrand;
  const CustomBrand({super.key, required this.carBrand});

  @override
  Widget build(BuildContext context) {
    return Container(
  
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: AppColors.cardGradient,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(carBrand.name, style: Styles.style14LightMontserrat),
            SizedBox(width: 5.w),

            Image.asset(
              carBrand.image,
              height: 20.h,
             width: 20.w,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
