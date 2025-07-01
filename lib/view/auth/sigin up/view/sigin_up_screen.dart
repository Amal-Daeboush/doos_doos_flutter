import 'package:doss_doss/core/class/status_request.dart';
import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/app_sizes.dart' show AppSizes;
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/auth/login/view/login_screen.dart';
import 'package:doss_doss/view/auth/sigin%20up/controller/sigin_up_controller.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/loading/car_loader.dart';
import 'package:doss_doss/view/widgets/text%20field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        child: GetBuilder(
          init: SiginUpController(),
          builder: (controller) {
            return Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 25,
                    ),
                    child: Form(
                      key: controller.keyForm,
                      child: Column(
                        children: [
                          //     SizedBox(height: AppSizes.lg),
                          CustomTextFormField(
                            controller: controller.nameController,
                            hintText: 'Username ',
                            obscureText: false,
                            isPassWord: false,
                          ),
                          SizedBox(height: AppSizes.md),
                          CustomTextFormField(
                            controller: controller.countryController,
                            hintText: 'Country ',
                            obscureText: false,
                            isPassWord: false,
                          ),
                          SizedBox(height: AppSizes.md),
                          CustomTextFormField(
                            keyboardType: TextInputType.number,
                            controller: controller.phoneController,
                            hintText: 'Phone number',
                            obscureText: false,
                            isPassWord: false,
                          ),
                          SizedBox(height: AppSizes.md),
                          CustomTextFormField(
                            hintText: 'Email',
                            obscureText: false,
                            isPassWord: false,
                            controller: controller.emailController,
                          ),
                          SizedBox(height: AppSizes.md),
                          CustomTextFormField(
                            controller: controller.passwordController,
                            hintText: 'Password',
                            obscureText: controller.obscureText,
                            onTapobscure: () {
                              controller.changeObscureText();
                            },
                            icon:
                                controller.obscureText
                                    ? Icon(
                                      Icons.visibility_off,
                                      color: AppColors.greyColor12,
                                      size: 15,
                                    )
                                    : const Icon(
                                      Icons.visibility,
                                      color: AppColors.greyColor12,
                                      size: 15,
                                    ),
                            isPassWord: true,
                          ),

                          SizedBox(height: AppSizes.md),
                          CustomButtons(
                            onTap: () => controller.register(),
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
                              Checkbox(
                                value: controller.isAgreedToTerms,
                                onChanged: (value) {
                                  controller
                                      .toggleAgreement(); // استدعاء دالة التبديل
                                },
                              ),
                              Expanded(
                                child: Text(
                                  textAlign: TextAlign.center,
                                  'I agree to the Terms & Conditions and Privacy Policy of DOOS DOOS.',
                                  style: Styles.style10.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
