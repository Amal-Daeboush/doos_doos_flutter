import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/app_sizes.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/auth/forget%20password/view/forget_password_screen.dart';
import 'package:doss_doss/view/auth/select%20ride/view/select_your_ride_screen.dart';
import 'package:doss_doss/view/auth/sigin%20up/view/sigin_up_screen.dart';
import 'package:doss_doss/view/auth/widgets/custom_or.dart';
import 'package:doss_doss/view/widgets/buttons/custom_button_google.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/text%20field/custom_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In', style: Styles.style26.copyWith()),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              children: [
            //    Center(child: Text('Sign In', style: Styles.style30)),
           //     SizedBox(height: AppSizes.xl),
                CustomTextFormField(
                  hintText: 'Email ',
                  obscureText: false,
                  isPassWord: false,
                ),
                SizedBox(height: AppSizes.md),
                CustomTextFormField(
                  hintText: 'Password',
                  obscureText: false,
                  isPassWord: false,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.to(
                          ForgetPasswordScreen(),
                          transition: Transition.downToUp,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeOut,
                        );
                      },
                      child: Text(
                        'Forget password?',
                        style: Styles.style14Light.copyWith(
                          fontFamily: 'Montserrat',
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.md),
                CustomButtons(
                  onTap: () => Get.off(SelectYourRideScreen(),  transition: Transition.downToUp,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeOut,),
                  border: AppColors.greyColor2,
                  issmall: false,
                  title: 'Sign In',
                  isBlack: false,
                  color: AppColors.greyColor2,
                ),
                SizedBox(height: AppSizes.md),
                CustomOR(),
                SizedBox(height: AppSizes.md),
                CustomButtonGoogle(isGoogle: true),
                SizedBox(height: AppSizes.sm),
                CustomButtonGoogle(isGoogle: false),
                SizedBox(height: AppSizes.sm),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t hava an account ? ',
                        style: Styles.style16Montserrat.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                      TextSpan(
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                Get.off(
                                  const SiginUpScreen(),
                                  transition: Transition.downToUp,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeOut,
                                );
                              },
                        text: ' sign up',
                        style: Styles.style16Montserrat.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
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
