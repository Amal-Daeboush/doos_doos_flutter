import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/add%20a%20car/controller/add_more_features_controller.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../widgets/buttons/custom_buttons.dart';

class AddFeaturesScreen extends StatelessWidget {
  const AddFeaturesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: false),
      body: GetBuilder(
        init: AddMoreFeaturesController(),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Features ?', style: Styles.style26),
                  SizedBox(height: 20.h),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children:
                        controller.Features.map((feature) {
                          bool isSelected = controller.myFeatures.contains(
                            feature,
                          );

                          return GestureDetector(
                            onTap: () => controller.selectFeatures(feature),
                            child: SizedBox(
                              width:
                                  (MediaQuery.of(context).size.width -
                                      16 * 2 -
                                      8) /
                                  2,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isSelected
                                          ? AppColors.greyColor2
                                          : Colors.transparent,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color:
                                        isSelected
                                            ? AppColors.primary
                                            : AppColors.greyColor15,
                                    width: 0.5,
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      feature['icon'],
                                      width: 20.w,
                                      height: 20.h,
                                    ),
                                    SizedBox(width: 6.w),
                                    Expanded(
                                      child: Text(
                                        feature['name'],
                                        style: Styles.style14LightMontserrat
                                            .copyWith(
                                              fontWeight: FontWeight.w600,
                                            ),
                                        softWrap: true,
                                        overflow: TextOverflow.visible,
                                        maxLines: 2, // اسمح بسطرين للنص
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                  ),

                  SizedBox(height: 20.h),

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
            ),
          );
        },
      ),
    );
  }
}
