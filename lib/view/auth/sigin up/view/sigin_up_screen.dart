import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/app_sizes.dart' show AppSizes;
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/auth/login/view/login_screen.dart';
import 'package:doss_doss/view/auth/select%20ride/view/select_your_ride_screen.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/text%20field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SiginUpScreen extends StatelessWidget {
  const SiginUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isBack: true,
        title: 'Sign Up',
        onBack:
            () => Get.off(
              LoginScreen(),
              transition: Transition.downToUp,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOut,
            ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              children: [
                //     SizedBox(height: AppSizes.lg),
                CustomTextFormField(
                  hintText: 'Username ',
                  obscureText: false,
                  isPassWord: false,
                ),
                SizedBox(height: AppSizes.md),
                CustomTextFormField(
                  hintText: 'Phone number',
                  obscureText: false,
                  isPassWord: false,
                ),
                SizedBox(height: AppSizes.md),
                CustomTextFormField(
                  hintText: 'Email',
                  obscureText: false,
                  isPassWord: false,
                ),
                SizedBox(height: AppSizes.md),
                CustomTextFormField(
                  hintText: 'Password',
                  obscureText: false,
                  isPassWord: false,
                ),

                SizedBox(height: AppSizes.md),
                CustomButtons(
                  onTap:
                      () => Get.off(
                        SelectYourRideScreen(),
                        transition: Transition.downToUp,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeOut,
                      ),
                  issmall: false,
                  border: AppColors.greyColor2,
                  title: 'Sign Up',
                  isBlack: false,
                  color: AppColors.greyColor2,
                ),

                SizedBox(height: AppSizes.sm),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Expanded(
                      child: Text(
                      textAlign: TextAlign.center,
                        'I agree to the Terms & Conditions and Privacy Policy of DOOS DOOS.',
                        style: Styles.style10.copyWith(fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
