import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/app_sizes.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/auth/select%20ride/view/select_your_ride_screen.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/text%20field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isBack: true, title: 'Create new password'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 25,),
            child: Column(
              children: [
                // SizedBox(height: AppSizes.lg),
                Text(
                  'Your new password must be diffrent from your old password',
                  style: Styles.style16Montserrat,
                ),
                SizedBox(height: AppSizes.lg),
                CustomTextFormField(
                  hintText: 'New Password',
                  obscureText: false,
                  isPassWord: false,
                ),
                SizedBox(height: AppSizes.sm),
                Text(
                  'Password must have at least 6-12 character,a number and special character',
                  style: Styles.style16Montserrat.copyWith(
                    color: AppColors.greyColor4,
                  ),
                ),
                SizedBox(height: AppSizes.xl),
                CustomTextFormField(
                  hintText: 'Confirm New Password',
                  obscureText: false,
                  isPassWord: false,
                ),
                Text(
                  'Password must have at least 6-12 character,a number and special character',
                  style: Styles.style16Montserrat.copyWith(
                    color: AppColors.greyColor4,
                  ),
                ),
                SizedBox(height: AppSizes.xl * 2),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: CustomButtons(
                    onTap:
                        () => Get.off(
                          SelectYourRideScreen(),
                          transition: Transition.downToUp,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeOut,
                        ),

                    border: AppColors.greyColor2,
                    title: 'Reset Password',
                    isBlack: false,
                    color: AppColors.greyColor2,
                    issmall: false,
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
