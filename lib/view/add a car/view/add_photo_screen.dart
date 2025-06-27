import 'package:doss_doss/core/class/helper_functions.dart';
import 'package:doss_doss/core/constant/app_colors.dart';

import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/add%20a%20car/controller/add_photo_controller.dart';
import 'package:doss_doss/view/add%20a%20car/widgets/custom_contdition_add_photo.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AddPhotoScreen extends StatelessWidget {
  const AddPhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: false),
      body: GetBuilder(
        init: AddPhotoController(),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Photos', style: Styles.style26),
                        SizedBox(height: 20.h),
                        customConditionAddPhoto(
                          'keep the background clear and neutral',
                          false,
                        ),
                        customConditionAddPhoto(
                          'use only neutral daylight',
                          false,
                        ),

                        customConditionAddPhoto(
                          'Do not show any logo, phone numbers or any advertising.',
                          false,
                        ),
                        customConditionAddPhoto(
                          'Upload at least 6 photos.',
                          false,
                        ),
                        customConditionAddPhoto(
                          'Two photos of the front of the car.',
                          false,
                        ),
                        customConditionAddPhoto(
                          'Two photos of the interior of the car.',
                          false,
                        ),
                        customConditionAddPhoto(
                          'Photo of the car trunk.',
                          false,
                        ),
                        customConditionAddPhoto(
                          'Photo of the car dashboard.',
                          false,
                        ),
                        customConditionAddPhoto(
                          'If any of these conditions doesn\'t apply your car wont be posted. ',
                          true,
                        ),

                        SizedBox(height: 10.h),
                        Container(
                          width: HelperFunctions.screenWidth(),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.greyColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 60),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Iconsax.gallery_export, size: 70.sp),
                                SizedBox(height: 10.h),

                                Text(
                                  'Upload image',
                                  style: Styles.style16Montserrat,
                                ),
                              ],
                            ),
                          ),
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
        },
      ),
    );
  }
}
