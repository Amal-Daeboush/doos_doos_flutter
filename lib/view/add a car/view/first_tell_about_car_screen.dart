import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/add%20a%20car/view/enter_vin_screen.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/text%20field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TellAboutCarScreen extends StatelessWidget {
  const TellAboutCarScreen({super.key});

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
              Text('Tell us about your car', style: Styles.style26),
              SizedBox(height: 25.h),
              CustomTextFormField(
                borderColor: AppColors.primary,
                borderRadius: BorderRadius.circular(10),
                obscureText: false,
                isPassWord: false,
                hintText: 'where is your car location?',
                hintTextInField: 'Enter address',
              ),
              SizedBox(height: 16.h),
              Text(
                'what car do you have?',
                style: Styles.style14LightMontserrat,
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Identify your car',
                    style: Styles.style12.copyWith(
                      color: AppColors.greyColor14,
                    ),
                  ),
                  CustomButtons(
                    onTap:
                        () => Get.to(
                          () => EnterVinScreen(),
                          transition: Transition.downToUp,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeOut,
                        ),
                    title: 'Start',
                    isBlack: true,
                    issmall: true,
                    border: AppColors.primary,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
