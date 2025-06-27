import 'package:doss_doss/core/class/helper_functions.dart';
import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/choose%20your%20car/controller/choose_your_type_car_controller.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChooseYourTypeCarScreen extends StatelessWidget {
  const ChooseYourTypeCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: false),
      body: GetBuilder(
        init: ChooseYourTypeCarController(),
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
                        Text('Choose Your Car Type', style: Styles.style26),
                        SizedBox(height: 30.h),
                        Text(
                          'Select Car Brand',
                          style: Styles.style14LightMontserrat.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          'Select your car\'s brand and model from the list below to ensure accurate listing and better visibility',
                          style: Styles.style12,
                        ),
                        SizedBox(height: 30.h),
                        Container(
                          width: HelperFunctions.screenWidth(),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.primary),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  controller.selectedType,
                                  style: Styles.style12.copyWith(
                                    color: AppColors.greyColor14,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: controller.openDrop,
                                  child: Icon(Icons.keyboard_arrow_down),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h),
                        controller.isopen
                            ? Container(
                              width: HelperFunctions.screenWidth(),
                              decoration: BoxDecoration(
                                color: AppColors.greyColor2,
                                border: Border.all(color: AppColors.greyColor2),

                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                children:
                                    controller.types.map((type) {
                                      bool isSelected =
                                          type == controller.selectedType;
                                      bool isfirst =
                                          controller.types.first ==
                                          type;
                                      bool islast =
                                          controller.types.last ==
                                         type;
                              
                                      return GestureDetector(
                                        onTap: () {
                                          controller.SelectType(type);
                                        },
                                        child: Padding(
                                          padding: islast? EdgeInsets.all(0):isfirst?EdgeInsets.all(0):EdgeInsets.symmetric(vertical: 5),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:islast?
                                                  BorderRadius.only(
                                            bottomLeft: Radius.circular(16),
                                            bottomRight: Radius.circular(16)
                                                  ):isfirst? BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            topRight: Radius.circular(16)
                                                  ): BorderRadius.zero,
                                              color:
                                                  isSelected
                                                      ? Colors.white
                                                      : AppColors.greyColor2,
                                            ),
                                            width:
                                                HelperFunctions.screenWidth(),
                                                                        
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                8.0,
                                              ),
                                              child: Text(
                                                type,
                                                style: Styles.style12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                              ),
                            )
                            : SizedBox(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CustomButtons(
                    title: 'Confirm Selection',
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
