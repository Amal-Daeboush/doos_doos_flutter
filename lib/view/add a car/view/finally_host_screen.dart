import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/my%20cars/view/list_your_car_screen.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/class/helper_functions.dart';

class FinallyHostScreen extends StatelessWidget {
  const FinallyHostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: HelperFunctions.screenHeight(),
          width: HelperFunctions.screenWidth(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImageAsset.back_car),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 100,
              bottom: 50,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Now Your Car is eligible',
                  style: Styles.style30.copyWith(color: AppColors.white),
                ),

                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CustomButtons(
                    border: AppColors.white,
                    issmall: false,
                    title: 'Get Started',
                    isBlack: false,
                    onTap:
                        () => Get.offAll(
                          () => ListYourCarScreen(),
                          transition: Transition.downToUp,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeOut,
                        ),
                    // onTap: () => Get.off(OnBoardingSecondScreen()),
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
