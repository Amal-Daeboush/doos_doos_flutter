import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/checkout%20screen/view/add_driver_license_screen.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/text%20field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EnterCodeCheckoutScreen extends StatelessWidget {
  const EnterCodeCheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: false),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Phone Number',
                style: Styles.style26.copyWith(color: AppColors.black3),
              ),
              SizedBox(height: 10.h),
              Text(
                'Please enter the code sent to 12345678912',
                style: Styles.style14LightMontserrat,
              ),
              SizedBox(height: 30.h),
              CustomTextFormField(
                //  helper:
                hintTextInField: '123',
                hintText: 'Enter the code',
                obscureText: false, borderColor: AppColors.primary,
                isPassWord: false,
                borderRadius: BorderRadius.circular(10),
              ),
              SizedBox(height: 15.h),

              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Didn’t receive the code? ',
                        style: Styles.style12.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                      TextSpan(
                        text: ' Resend code',
                        style: Styles.style12.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            SizedBox(height: 250.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: CustomButtons(
                     onTap:
                      () => Get.to(
                        () => AddDriverLicenseScreen(),
                        transition: Transition.downToUp,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      ),
                  title: 'Confirm',
                  isBlack: true,
                  issmall: false,
                  border: AppColors.primary, ),
              ),
            ],
          ),
        ),
      ),
    ); 
                
  }
}
