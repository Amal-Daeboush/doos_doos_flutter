import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/checkout%20screen/view/enter_code_checkout_screen.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/text%20field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EnterNumberCheckoutScreen extends StatelessWidget {
  const EnterNumberCheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: false,onBack: () => Get.back(),),
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
                'Enter your mobile number and we’ll text you a verification code',
                style: Styles.style14LightMontserrat,
              ),
              SizedBox(height: 30.h),
              CustomTextFormField(
                //  helper:
                hintTextInField: '12345678',
                hintText: 'Mobile number',
                obscureText: false,
                borderColor: AppColors.primary,
                isPassWord: false,
                borderRadius: BorderRadius.circular(10),
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Checkbox(
                    checkColor: AppColors.greyColor,
                    activeColor: AppColors.primary,
                    value: false,
                    onChanged: (value) {},
                  ),
                  Expanded(
                    child: Text(
                      'Get account messages and important updates via text message',
                      style: Styles.style12,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 250.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: CustomButtons(
                  onTap:
                      () => Get.to(
                        () => EnterCodeCheckoutScreen(),
                        transition: Transition.downToUp,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      ),
                  title: 'Send Code',
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
