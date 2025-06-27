import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/add%20a%20car/controller/add_description_controller.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart'
    show CustomButtons;
import 'package:doss_doss/view/widgets/text%20field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AddDescriptionScreen extends StatelessWidget {
  const AddDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: false),
      body: GetBuilder(
        init: AddDescriptionController(),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Description', style: Styles.style26),
                        SizedBox(height: 10.h),
                        Text(
                          'Tell guests what make yur car unique',
                          style: Styles.style14LightMontserrat,
                        ),
                        SizedBox(height: 30.h),
                        CustomTextFormField(
                          obscureText: false,
                          isPassWord: false,
                          borderRadius: BorderRadius.circular(10),
                          borderColor: AppColors.primary,
                          maxLength: 4,
                          suffixIcon: Icon(Iconsax.edit_2),
                          hintTextInField:
                              'The GLA 250 SUV combines luxury, performance, and practicality in a sleek design. With a turbocharged engine, smooth acceleration, and advanced tech, it offers both comfort and adventure.',
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: CustomButtons(
                             onTap: controller.continuee,
                    title: 'Continue',
                    isBlack: true,
                    issmall: false,
                    border: AppColors.primary,
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
