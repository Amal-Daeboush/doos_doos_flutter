import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/sevices/sevices.dart';
import 'package:doss_doss/view/auth/login/view/login_screen.dart';
import 'package:doss_doss/view/home/widgets/book_car_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constant/styles.dart';

LogoutDialog() {
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
                  'Are you sure you want to log out ?',
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
                    BookCarButton(
                      name: 'Yes',
                      isCormorantFont: true,
                      onTap: () async {
                        // Log out and navigate to the authentication screen
                        print("تسجيل خروج ...");
                        await MyServices().clear();
                        Get.offAll(const LoginScreen());

                        Get.snackbar('', 'تم تسجيل الخروج');
                      },
                    ),
                    BookCarButton(
                      name: 'No',
                      isCormorantFont: true,
                      onTap: () => Get.back(),
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
          begin: const Offset(0, 1), // يبدأ من الأسفل
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    },
  );
}
