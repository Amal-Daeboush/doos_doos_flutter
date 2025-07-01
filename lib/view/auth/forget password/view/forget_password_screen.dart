import 'package:doss_doss/core/class/status_request.dart';
import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/app_sizes.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/auth/forget%20password/controller/forget_password_controller.dart';
import 'package:doss_doss/view/auth/login/view/login_screen.dart';

import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/loading/car_loader.dart';
import 'package:doss_doss/view/widgets/text%20field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isBack: true,
        title: 'Forget password',
        onBack:
            () => Get.off(
              LoginScreen(),
              transition: Transition.downToUp,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            ),
      ),
      body: GetBuilder(
        init: ForgetPasswordController(),
        builder: (controller) {
          return SafeArea(
            child: Stack(
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
                          //  SizedBox(height: AppSizes.lg),
                          Text(
                            'Please enter email address or phone number to reset your password',
                            style: Styles.style16Montserrat,
                          ),
                          SizedBox(height: AppSizes.lg),
                          CustomTextFormField(
                            controller: controller.emailController,
                            hintText: 'Email /phone number',
                            obscureText: false,
                            isPassWord: false,
                          ),
                          SizedBox(height: AppSizes.xl * 2),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: CustomButtons(
                              onTap: controller.ForgetPass,
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
                 carLoader()
              ],
            ),
          );
        },
      ),
    );
  }
}
