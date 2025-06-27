import 'package:doss_doss/view/add%20a%20car/controller/add_car_condition_controller.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/constant/app_colors.dart' show AppColors;
import '../../../core/constant/styles.dart';
import '../../widgets/buttons/custom_buttons.dart';
import '../../widgets/text field/custom_text_field.dart';

class AddCarConditionScreen extends StatelessWidget {
  const AddCarConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: false),
      body: GetBuilder(
        init: AddCarConditionController(),
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
                        Text('Car Condition', style: Styles.style26),
                        SizedBox(height: 10.h),
                        Text(
                          'we need more information about your car',
                          style: Styles.style14LightMontserrat,
                        ),
                        SizedBox(height: 25.h),
                        CustomTextFormField(
                          readOnly: true,
                          controller: controller.conditionController,
                          borderColor: AppColors.primary,
                          suffixIcon: Icon(Iconsax.arrow_down_1),
                          borderRadius: BorderRadius.circular(10),
                          obscureText: false,
                          isPassWord: false,
                          onTap: () => controller.selectCondition(context),
                          hintText: 'Mechanical condition',
                        ),
                        SizedBox(height: 16.h),
                        CustomTextFormField(
                          controller: controller.seatbeltsController,
                          onTap: () => controller.selectSeatbelts(context),
                          suffixIcon: Icon(Iconsax.arrow_down_1),
                          readOnly: true,
                          borderColor: AppColors.primary,
                          borderRadius: BorderRadius.circular(10),
                          obscureText: false,
                          isPassWord: false,
                          hintText: 'Do all seats have seatbelts?',
                        ),
                        SizedBox(height: 16.h),
                        CustomTextFormField(
                          readOnly: true,
                          suffixIcon: Icon(Iconsax.edit_2),
                          borderColor: AppColors.primary,
                          borderRadius: BorderRadius.circular(10),
                          obscureText: false,
                          isPassWord: false,
                          hintText: 'Additional information',
                          maxLength: 4,
                          hintTextInField:
                              'Any additional details our team should be aware of during the review process (e.g., modifications, previous repairs)?',
                        ),
                        SizedBox(height: 16.h),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: CustomButtons(
                    title: 'Continue',
                    onTap: controller.continuee,
                    isBlack: true,
                    issmall: false,
                    border: AppColors.primary,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
