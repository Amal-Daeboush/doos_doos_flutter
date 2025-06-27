import 'package:doss_doss/core/constant/app_colors.dart' show AppColors;
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/add_more_details_conroller.dart';

class AddMoreDetailsScreen extends StatelessWidget {
  const AddMoreDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: false),
      body: GetBuilder<AddMoreDetailsController>(
        init: AddMoreDetailsController(),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Add more details', style: Styles.style26),
                        SizedBox(height: 30.h),

                        // Number of doors
                        Text(
                          'Number of doors',
                          style: Styles.style14LightMontserrat,
                        ),
                        SizedBox(height: 10.h),
                        Wrap(
                          spacing: 10,
                          children:
                              controller.doorsOptions.map((door) {
                                final isSelected =
                                    controller.selectedDoors == door;
                                return GestureDetector(
                                  onTap: () => controller.selectDoors(door),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 80.w,
                                      height: 50.h,
                                      alignment: Alignment.center,
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
                                      child: Text(
                                        door,
                                        style: Styles.style18.copyWith(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                        ),

                        SizedBox(height: 30.h),

                        // Number of seats
                        Text(
                          'Number of seats',
                          style: Styles.style14LightMontserrat,
                        ),
                        SizedBox(height: 10.h),
                        Wrap(
                          spacing: 10,
                          children:
                              controller.seatsOptions.map((seat) {
                                final isSelected =
                                    controller.selectedSeats == seat;
                                return GestureDetector(
                                  onTap: () => controller.selectSeats(seat),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 80.w,
                                      height: 50.h,
                                      alignment: Alignment.center,
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
                                      child: Text(
                                        seat,
                                        style: Styles.style18.copyWith(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),

                // Continue button
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
