import 'package:doss_doss/core/class/helper_functions.dart';
import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtons extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final bool isBlack;
   final bool issmall;
  final Color? color;
  final Color border;
  const CustomButtons({
    super.key,
    required this.title,
    required this.isBlack,
    this.onTap, this.color, required this.issmall, required this.border,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        width:issmall?null: HelperFunctions.screenWidth(),
        decoration: BoxDecoration(
          border: Border.all(color:border ),
          borderRadius: BorderRadius.circular(30.r),
          color: isBlack ? AppColors.primary : color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical:issmall?5: 10,horizontal: 15),
          child: Center(
            child: Text(
              title,
              style: Styles.style18.copyWith(
                color: isBlack ? AppColors.white :title=='Remove'?AppColors.white: AppColors.primary,
                fontFamily: 'Montserrat',
                fontSize: issmall?14.sp:18.sp
              ),
            ),
          ),
        ),
      ),
    );
  }
}
