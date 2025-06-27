import 'package:doss_doss/core/class/helper_functions.dart';
import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RetalContainer extends StatelessWidget {
  final String title;
  final String button;
  final void Function()? onTap;
  final Widget? widget;
  const RetalContainer({
    super.key,
    required this.title,
    required this.button,
    this.onTap,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: 
         Container(
           
            width: HelperFunctions.screenWidth(),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              gradient: LinearGradient(
                colors: [ Colors.grey.shade400,Colors.black,],
              ),
            ),
          
        child: Padding(
          padding: const EdgeInsets.all(0.25),
          child: Container(
            width: HelperFunctions.screenWidth(),
            margin: EdgeInsets.all(1), // سماكة الإطار
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.r),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: Styles.style20.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      CustomButtons(
                        onTap: onTap,
                        title: button,
                        isBlack: true,
                        issmall: true,
                        border: AppColors.primary,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  widget ?? SizedBox(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}