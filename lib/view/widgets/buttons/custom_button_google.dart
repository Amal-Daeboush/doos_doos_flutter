import 'package:doss_doss/core/class/helper_functions.dart';
import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/styles.dart';

class CustomButtonGoogle extends StatelessWidget {
  final void Function()? onTap;
  final bool isGoogle;

  const CustomButtonGoogle({super.key, required this.isGoogle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        width: HelperFunctions.screenWidth(),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.greyColor),
          borderRadius: BorderRadius.circular(30.r),
        ),

        
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isGoogle
                  ? Image.asset(AppImageAsset.google)
                  : Icon(Icons.facebook, color: Colors.blue),
              SizedBox(width: 10.w),
              Text(
                isGoogle ? 'Login with google' : 'Login with Facebook',
                style: Styles.style16Montserrat,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
