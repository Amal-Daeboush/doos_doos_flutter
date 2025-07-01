import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/home/widgets/book_car_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CarDetailsController extends GetxController {
  RemoveDialog() {
    // emailController.clear();
    Get.generalDialog(
      barrierLabel: "Dialog",
      barrierDismissible: true,
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Material(
            color: Colors.transparent,
            child: Container(
              //   height: 200,
              width: MediaQuery.of(context).size.width * 0.7,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Alert',
                    style: Styles.style16Montserrat.copyWith(
                      fontWeight: FontWeight.w900,
                      fontSize: 18.sp,
                      fontFamily: '',
                      color: AppColors.red3,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Are you sure you want to remove the car ?',
                    textAlign: TextAlign.center,
                    style: Styles.style14LightMontserrat.copyWith(
                      fontWeight: FontWeight.w900,
                      fontFamily: '',
                      fontSize: 14.sp,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BookCarButton(name: 'Yes',isCormorantFont: true,),
                      BookCarButton(name: 'No',isCormorantFont: true,),
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
            begin: const Offset(0, 1), // يبدأ من الأسفل
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    );
  }
}
