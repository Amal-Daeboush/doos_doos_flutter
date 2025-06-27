import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void replay() {
  Get.generalDialog(
    barrierLabel: "Dialog",
    barrierDismissible: true,
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (context, animation, secondaryAnimation) {
      return Center(
        child: Material(
          color: Colors.transparent,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.zero,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Reply to Review',
                  style: Styles.style14LightMontserrat.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 15.h),

                TextField(
                  maxLines: 3, // 3 lines in the TextField
                  decoration: InputDecoration(
                    hintStyle: Styles.style12.copyWith(color: AppColors.greyColor),
                    hintText: 'Write your response here',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.primary))
                  ),
                ),

                SizedBox(height: 20.h),

                // Row containing Cancel and OK buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Cancel Button
                    CustomButtons(
                      title: 'Cancel',
                      isBlack: false,
                      issmall: true,
                      border: AppColors.primary,
                    ),
                    const SizedBox(width: 10),
                    // OK Button
                    CustomButtons(
                      title: 'Submit',
                      isBlack: true,
                      issmall: true,
                      border: AppColors.primary,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 1), 
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    },
  );
}
