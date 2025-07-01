import 'package:doss_doss/view/add%20a%20car/controller/second_tell_about_car_controller.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/constant/styles.dart';
import '../../widgets/buttons/custom_buttons.dart';
import '../../widgets/text field/custom_text_field.dart';

class EditCarScreen extends StatelessWidget {
  const EditCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: false),
      body: GetBuilder(
        init: SecondTellAboutCarController(),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('car details', style: Styles.style26),
                  SizedBox(height: 35.h),

                  CustomTextFormField(
                    onTap: () => controller.selectBrand(context),
                    readOnly: true,
                    suffixIcon: Icon(Iconsax.arrow_down_1),
                    borderColor: AppColors.primary,
                    borderRadius: BorderRadius.circular(10),
                    obscureText: false,
                    isPassWord: false,
                    controller: controller.brandController,
                    hintText: 'Car Brand',
                    hintTextInField: 'brand',
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    suffixIcon: Icon(Iconsax.edit_2),
                    borderColor: AppColors.primary,
                    borderRadius: BorderRadius.circular(10),
                    obscureText: false,
                    isPassWord: false,
                    hintText: 'where is your car location?',
                    hintTextInField: 'Enter address',
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    suffixIcon: Icon(Iconsax.edit_2),
                    borderColor: AppColors.primary,
                    borderRadius: BorderRadius.circular(10),
                    obscureText: false,
                    isPassWord: false,
                    hintText: 'what car do you have?',
                    hintTextInField: 'GLA 250 SUV',
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    suffixIcon: Icon(Iconsax.edit_2),
                    borderColor: AppColors.primary,
                    borderRadius: BorderRadius.circular(10),
                    obscureText: false,
                    isPassWord: false,
                    hintText: 'VIN',
                    hintTextInField: '4T1G11AK5LU123456',
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    suffixIcon: Icon(Iconsax.edit_2),
                    borderColor: AppColors.primary,
                    borderRadius: BorderRadius.circular(10),
                    obscureText: false,
                    isPassWord: false,
                    hintText: 'Confirm mileage range',
                    hintTextInField: '50_100,000km',
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    onTap: () => controller.selectTransmission(context),
                    readOnly: true,
                    suffixIcon: Icon(Iconsax.arrow_down_1),
                    borderColor: AppColors.primary,
                    borderRadius: BorderRadius.circular(10),
                    obscureText: false,
                    isPassWord: false,
                    controller: controller.transmissionController,
                    hintText: 'Transmission',
                    hintTextInField: 'manual',
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    //  onTap: () => controller.selectTransmission(context),
                    readOnly: true,
                    suffixIcon: Icon(Iconsax.arrow_down_1),
                    borderColor: AppColors.primary,
                    borderRadius: BorderRadius.circular(10),
                    obscureText: false,
                    isPassWord: false,
                    // controller: controller.transmissionController,
                    hintText: 'Mechanical condition',
                    hintTextInField: '',
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    //  onTap: () => controller.selectTransmission(context),
                    readOnly: true,
                    suffixIcon: Icon(Iconsax.arrow_down_1),
                    borderColor: AppColors.primary,
                    borderRadius: BorderRadius.circular(10),
                    obscureText: false,
                    isPassWord: false,
                    // controller: controller.transmissionController,
                    hintText: 'Do all seats have seatbelts?',
                    hintTextInField: '',
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    //  onTap: () => controller.selectTransmission(context),
                    readOnly: true,
                    suffixIcon: Icon(Iconsax.arrow_down_1),
                    borderColor: AppColors.primary,
                    borderRadius: BorderRadius.circular(10),
                    obscureText: false,
                    isPassWord: false,
                    // controller: controller.transmissionController,
                    hintText: 'license plate number',
                    hintTextInField: '',
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    //  onTap: () => controller.selectTransmission(context),
                    readOnly: false,
                    maxLength: 4,
                    suffixIcon: Icon(Iconsax.edit_2),
                    borderColor: AppColors.primary,
                    borderRadius: BorderRadius.circular(10),
                    obscureText: false,
                    isPassWord: false,
                    // controller: controller.transmissionController,
                    hintText: 'Additional information',
                    hintTextInField:
                        'Any additional details our team should be aware of during the review process (e.g., modifications, previous repairs)?',
                  ),

                  SizedBox(height: 16.h),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: CustomButtons(
                      onTap: () => Get.back(),
                      title: 'Save changes',
                      isBlack: true,
                      issmall: false,
                      border: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
