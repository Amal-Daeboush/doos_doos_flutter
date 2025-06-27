import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/auth/login/view/login_screen.dart';
import 'package:doss_doss/view/on%20boarding/widgets/custom_column.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnBoardingSecondScreen extends StatelessWidget {
  const OnBoardingSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'How Doos Doos Works',
                  style: Styles.style30.copyWith(fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 15.h),
                CustomColumn(
                  isCheck: true,
                  title: 'Browse & Choose',
                  subTitle:
                      'Explore a variety of available cars and select the one that suits your trip.',
                ),
                CustomColumn(
                  isCheck: true,
                  title: 'Book Instantly',
                  subTitle:
                      'Set your rental dates, choose pickup & return options, and confirm your booking.',
                ),
                CustomColumn(
                  isCheck: true,
                  title: 'Meet & Drive',
                  subTitle:
                      'Pick up the car from the host at the scheduled time and start your journey',
                ),
                CustomColumn(
                  isCheck: true,
                  subTitle:
                      'Drop off the car as agreed and leave a review to help future renters.',
                  title: 'Return & Review',
                ),
                SizedBox(height: 15.h),
                Text('Why Choose Doos Doos ?', style: Styles.style30.copyWith(fontWeight: FontWeight.w700)),
                CustomColumn(
                  title: 'Wide Selection',
                  subTitle:
                      'Find the perfect car for any trip, from economy to luxury.',
                  isCheck: false,
                ),
                CustomColumn(
                  title: 'Easy & Secure',
                  subTitle: 'Hassle-free booking with secure payments.',
                  isCheck: false,
                ),
                CustomColumn(
                  title: 'Affordable Prices',
                  subTitle: 'Competitive rates with no hidden fees.',
                  isCheck: false,
                ),
                CustomColumn(
                  title: 'Reliable Hosts',
                  subTitle: 'Verified car owners for a trusted experience.',
                  isCheck: false,
                ),
                SizedBox(height: 20.h),
                CustomButtons(
                  border: AppColors.primary,
                   issmall: false,
                  title: 'Get Started',
                  isBlack: true,
                  onTap: () => Get.off(LoginScreen()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
