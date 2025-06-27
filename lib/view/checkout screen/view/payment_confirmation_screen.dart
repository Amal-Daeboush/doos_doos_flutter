import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/botttom%20nav%20bar/view/bottom_nav_bar_screen.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class PaymentConfirmationScreen extends StatelessWidget {
  const PaymentConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment Confirmation',
                style: Styles.style26.copyWith(color: AppColors.black3),
              ),

              SizedBox(height: 100.h),
              Center(child: Icon(Iconsax.wallet, size: 100.sp)),
              SizedBox(height: 20.h),
              Center(
                child: Text(
                  'Your transaction has been completed successfully',
                  textAlign: TextAlign.center,
                  style: Styles.style12.copyWith(fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(height: 70.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: CustomButtons(
                  onTap:
                      () => Get.offAll(
                        () => BottomNavBarScreen(),
                        transition: Transition.downToUp,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      ),
                  title: 'Back to home',
                  isBlack: false,
                  issmall: false,
                  border: AppColors.greyColor2,
                  color: AppColors.greyColor2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
