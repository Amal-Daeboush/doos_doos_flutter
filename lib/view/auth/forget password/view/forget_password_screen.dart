import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/app_sizes.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/auth/verfication/view/otp_Verification_screen.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/text%20field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isBack: true, title: 'Forget password'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Column(
              children: [
                //  SizedBox(height: AppSizes.lg),
                Text(
                  'Please enter email address or phone number to reset your password',
                  style: Styles.style16Montserrat,
                ),
                SizedBox(height: AppSizes.lg),
                CustomTextFormField(
                  hintText: 'Email /phone number',
                  obscureText: false,
                  isPassWord: false,
                ),
                SizedBox(height: AppSizes.xl * 2),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: CustomButtons(
                    onTap:
                        () => Get.to(
                          OTPVerificationScreen(),
                          transition: Transition.downToUp,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeOut,
                        ),
                    title: 'Submit',
                    isBlack: true,
                    issmall: false,
                    border: AppColors.primary,
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
