import 'package:doss_doss/core/class/status_request.dart';
import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/app_sizes.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/auth/create%20new%20password/controller/create_new_password_controller.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/loading/car_loader.dart';
import 'package:doss_doss/view/widgets/text%20field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CreateNewPassword extends StatelessWidget {
  final String otp;
  const CreateNewPassword({super.key, required this.otp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isBack: true, title: 'Create new password'),
      body: SafeArea(
        child: GetBuilder(
          init: CreateNewPasswordController(verficationCode: otp),
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
                        children: [
                          // SizedBox(height: AppSizes.lg),
                          Text(
                            'Your new password must be diffrent from your old password',
                            style: Styles.style16Montserrat,
                          ),
                          SizedBox(height: AppSizes.lg),
                          CustomTextFormField(
                            controller: controller.passwordController,
                            hintText: 'New Password',
                            obscureText: false,
                            isPassWord: false,
                          ),
                          SizedBox(height: AppSizes.sm),
                          Text(
                            'Password must have at least 6-12 character,a number and special character',
                            style: Styles.style16Montserrat.copyWith(
                              color: AppColors.greyColor4,
                            ),
                          ),
                          SizedBox(height: AppSizes.xl),
                          CustomTextFormField(
                            controller: controller.confirmPasswordController,
                            hintText: 'Confirm New Password',
                            obscureText: false,
                            isPassWord: false,
                          ),
                          Text(
                            'Password must have at least 6-12 character,a number and special character',
                            style: Styles.style16Montserrat.copyWith(
                              color: AppColors.greyColor4,
                            ),
                          ),
                          SizedBox(height: AppSizes.xl * 2),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: CustomButtons(
                              onTap: controller.createNewPass,

                              border: AppColors.greyColor2,
                              title: 'Reset Password',
                              isBlack: false,
                              color: AppColors.greyColor2,
                              issmall: false,
                            ),
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
