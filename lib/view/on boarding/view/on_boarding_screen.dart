import 'package:doss_doss/core/class/helper_functions.dart';
import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/on%20boarding/view/on_boarding_second_screen.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: HelperFunctions.screenHeight(),
        width: HelperFunctions.screenWidth(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImageAsset.onBoarding),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Drive or Earn – Your Car, Your Choice!',
                style: Styles.style30.copyWith(color: AppColors.white),
              ),
              Text(
                'Rent a car or share yours effortlessly. A secure and seamless experience for all.',
                style: Styles.style18.copyWith(color: AppColors.white),
              ),
              SizedBox(height: 25.h),
              CustomButtons(
                border:   AppColors.white,
                 issmall: false,
                title: 'Get Started',
                isBlack: false,
                onTap: () => Get.off(OnBoardingSecondScreen()),
                color: AppColors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
