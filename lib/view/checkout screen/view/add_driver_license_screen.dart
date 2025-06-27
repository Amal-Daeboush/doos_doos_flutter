import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/checkout%20screen/view/payment_method_screen.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/text%20field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AddDriverLicenseScreen extends StatelessWidget {
  const AddDriverLicenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: false),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                'Driver’s License',
                style: Styles.style26.copyWith(color: AppColors.black3),
              ),
              SizedBox(height: 10.h),
              Text(
                'Scan your driver’s license or enter your information exactly as it appears on your license',
                style: Styles.style14LightMontserrat,
              ),
              SizedBox(height: 15.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: AppColors.primary),
                ),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Iconsax.scanner),
                      SizedBox(width: 15.h),
                      Text(
                        'Scan to autofill',
                        style: Styles.style14LightMontserrat,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              CustomTextFormField(
                borderColor: AppColors.primary,
                hintText: 'Country',
                obscureText: false,
                isPassWord: false,
                borderRadius: BorderRadius.circular(10.r),
              ),
              SizedBox(height: 15.h),
              CustomTextFormField(
                borderColor: AppColors.primary,
                hintText: 'State',
                obscureText: false,
                isPassWord: false,
                borderRadius: BorderRadius.circular(10.r),
              ),
              SizedBox(height: 15.h),
              CustomTextFormField(
                hintText: 'First name',
                borderColor: AppColors.primary,
                obscureText: false,
                isPassWord: false,
                borderRadius: BorderRadius.circular(10.r),
              ),
              SizedBox(height: 15.h),
              CustomTextFormField(
                hintText: 'Last name',
                obscureText: false,
                borderColor: AppColors.primary,
                isPassWord: false,
                borderRadius: BorderRadius.circular(10.r),
              ),
              SizedBox(height: 15.h),
              CustomTextFormField(
                hintText: 'License number',
                borderColor: AppColors.primary,
                obscureText: false,
                isPassWord: false,
                borderRadius: BorderRadius.circular(10.r),
              ),
              SizedBox(height: 15.h),
              CustomTextFormField(
                suffixIcon: Icon(Iconsax.calendar_add),
                hintText: 'Date of Birth',
                borderColor: AppColors.primary,
                obscureText: false,
                isPassWord: false,
                borderRadius: BorderRadius.circular(10.r),
              ),
              SizedBox(height: 15.h),
              CustomTextFormField(
                suffixIcon: Icon(Iconsax.calendar_add),
                hintText: 'Expiration date',
                borderColor: AppColors.primary,
                obscureText: false,
                isPassWord: false,
                borderRadius: BorderRadius.circular(10.r),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: CustomButtons(
                     onTap:
                      () => Get.to(
                        () => PaymentMethodScreen(isFromProfile: false,),
                        transition: Transition.downToUp,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      ),
                  title: 'Continue',
                  isBlack: true,
                  issmall: false,
                  border: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
