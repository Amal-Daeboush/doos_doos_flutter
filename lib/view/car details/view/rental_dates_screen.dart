import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/view/car%20details/controller/rental_dates_controller.dart';
import 'package:doss_doss/view/car%20details/widgets/bottom%20container/bottom_container.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/class/helper_functions.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/styles.dart';

class RentalDatesScreen extends StatelessWidget {
  const RentalDatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final RentalDatesController controller = Get.put(RentalDatesController());

    return Scaffold(
      appBar: CustomAppBar(title: 'Rental Dates', isBack: false),
      body: GetBuilder<RentalDatesController>(
        builder: (controller) {
          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
                    child: Column(
                      children: [
                        Container(
                          width: HelperFunctions.screenWidth(),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            gradient: LinearGradient(
                              colors: [Colors.grey.shade400, Colors.black],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(0.25),
                            child: Container(
                              width: HelperFunctions.screenWidth(),
                              margin: EdgeInsets.all(1), // سماكة الإطار
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13.r),
                                color: Colors.white,
                              ),

                              /* constraints: BoxConstraints(
    maxHeight: 350.h, // حددتله ارتفاع أقصى 350
  ), */
                              child: TableCalendar(
                                firstDay: controller.firstDay,
                                lastDay: controller.lastDay,
                                focusedDay: controller.focusedDay,
                                rangeStartDay: controller.rangeStart,
                                rangeEndDay: controller.rangeEnd,
                                rangeSelectionMode:
                                    controller.rangeSelectionMode,
                                onRangeSelected: controller.onRangeSelected,
                                calendarStyle: CalendarStyle(
                                  todayDecoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    shape: BoxShape.circle,
                                  ),
                                  rangeHighlightColor: Colors.grey.shade300,
                                  selectedDecoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                  rangeStartDecoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                  rangeEndDecoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Pick up',
                                    style: Styles.style12.copyWith(
                                      color: AppColors.white,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  InkWell(
                                    onTap:
                                        () => controller.selectPickupTime(
                                          context,
                                        ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.greyColor2,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      padding: const EdgeInsets.all(5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            controller.pickupTime != null
                                                ? controller.pickupTime!.format(
                                                  context,
                                                )
                                                : '10 am',
                                            style: Styles.style12.copyWith(
                                              color: AppColors.primary,
                                            ),
                                          ),
                                          const Icon(Icons.refresh, size: 15),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  child: Image.asset(AppImageAsset.vec),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Return',
                                    style: Styles.style12.copyWith(
                                      color: AppColors.white,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  InkWell(
                                    onTap:
                                        () => controller.selectReturnTime(
                                          context,
                                        ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.greyColor2,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      padding: const EdgeInsets.all(5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            controller.returnTime != null
                                                ? controller.returnTime!.format(
                                                  context,
                                                )
                                                : '11 am',
                                            style: Styles.style12.copyWith(
                                              color: AppColors.primary,
                                            ),
                                          ),
                                          const Icon(Icons.refresh, size: 15),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              BottomContainer(
                title: 'Save',
                widget: Text('Clear', style: Styles.style14LightMontserrat),
              ),
            ],
          );
        },
      ),
    );
  }
}
