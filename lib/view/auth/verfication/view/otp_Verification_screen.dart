import 'package:doss_doss/core/class/status_request.dart';
import 'package:doss_doss/view/auth/verfication/controller/OTP_Verification_Controller.dart';
import 'package:doss_doss/view/auth/widgets/otp/custom_otp.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/loading/car_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_sizes.dart';
import '../../../../core/constant/styles.dart';

class OTPVerificationScreen extends StatelessWidget {
  final bool isResetpass;
  final String email;
  const OTPVerificationScreen({super.key, required this.email, required this.isResetpass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isBack: true, title: 'OTP Verification'),
      body: SafeArea(
        child: GetBuilder(
          init: OTPVerificationController(isResetpass: isResetpass),
          builder: (controller) {
            return Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 25,
                    ),
                    child: Form(
                      key: controller.keyForm,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //  SizedBox(height: AppSizes.xl),
                          Text(
                            'Verify your account',
                            style: Styles.style20.copyWith(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: AppSizes.sm),
                          Text(
                            'We sent Email with 6-digit OTP Verification Code to $email',
                            style: Styles.style14Light.copyWith(
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          SizedBox(height: AppSizes.lg),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: const OtpVerificationTextField(
                              
                              /*        onSubmit: (otpValue) {
                
                              controller.verificationCode = otpValue;
                            }, */
                            ),
                          ),
                          SizedBox(height: 15.h),
                          Center(
                            child: TextButton(
                            //   onPressed: controller.verfication,
                              
                             onPressed: () {},
                              child: Text(
                                'Resend Code',
                                style: Styles.style18.copyWith(
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: AppSizes.xl),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: CustomButtons(
                              onTap: controller.verfication,
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
                  if (controller.statusRequest == StatusRequest.loading)
                  if (controller.statusRequest == StatusRequest.loading)
                 carLoader()
              ],
            );
          },
        ),
      ),
    );
  }
}
