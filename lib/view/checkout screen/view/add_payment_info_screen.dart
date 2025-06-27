import 'package:doss_doss/view/botttom%20nav%20bar/view/bootom_nav_bar_host_screen.dart';
import 'package:doss_doss/view/checkout%20screen/view/payment_confirmation_screen.dart';
import 'package:doss_doss/view/checkout%20screen/view/payment_method_screen.dart';
import 'package:flutter/material.dart';
import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/text%20field/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AddPaymentInfoScreen extends StatelessWidget {
  final bool isFromProfile;
  const AddPaymentInfoScreen({super.key, required this.isFromProfile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: '',
        isBack: true,
        onBack:
            isFromProfile
                ? () => Get.off(
                  () => PaymentMethodScreen(isFromProfile: isFromProfile),
                  transition: Transition.downToUp,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                )
                : () => Get.back(),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                'Add your payment information',
                style: Styles.style26.copyWith(color: AppColors.black3),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Card information',
                    style: Styles.style16Montserrat.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Iconsax.scanner),
                      SizedBox(width: 10.w),
                      Text(
                        'scan card',
                        style: Styles.style12.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 15.h),
              CustomTextFormField(
                borderColor: AppColors.primary,
                hintText: 'Name on card',
                obscureText: false,
                isPassWord: false,
                borderRadius: BorderRadius.circular(10.r),
              ),
              SizedBox(height: 15.h),
              CustomTextFormField(
                borderColor: AppColors.primary,
                hintText: 'Card number',
                obscureText: false,
                isPassWord: false,
                borderRadius: BorderRadius.circular(10.r),
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      hintText: 'MM/YY',
                      borderColor: AppColors.primary,
                      obscureText: false,
                      isPassWord: false,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: CustomTextFormField(
                      hintText: 'CVC',
                      borderColor: AppColors.primary,
                      obscureText: false,
                      isPassWord: false,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              Text(
                'Billing address11',
                style: Styles.style16Montserrat.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 15.h),
              CustomTextFormField(
                hintText: 'Country',
                obscureText: false,
                borderColor: AppColors.primary,
                isPassWord: false,
                borderRadius: BorderRadius.circular(10.r),
              ),
              SizedBox(height: 15.h),
              CustomTextFormField(
                hintText: 'Address line 1',
                borderColor: AppColors.primary,
                obscureText: false,
                isPassWord: false,
                borderRadius: BorderRadius.circular(10.r),
              ),
              SizedBox(height: 15.h),
              CustomTextFormField(
                hintText: 'Address line 2 (optional)',
                borderColor: AppColors.primary,
                obscureText: false,
                isPassWord: false,
                borderRadius: BorderRadius.circular(10.r),
              ),
              SizedBox(height: 15.h),
              CustomTextFormField(
                hintText: 'City',
                borderColor: AppColors.primary,
                obscureText: false,
                isPassWord: false,
                borderRadius: BorderRadius.circular(10.r),
              ),
              SizedBox(height: 15.h),
              CustomTextFormField(
                hintText: 'postal code (optional)',
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
                      () =>
                          isFromProfile
                              ? Get.back()
                              : Get.to(
                                () => PaymentConfirmationScreen(),
                                transition: Transition.downToUp,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeOut,
                              ),
                  title: 'Save',
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
