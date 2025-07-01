import 'package:doss_doss/core/class/helper_functions.dart';
import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/all%20cars%20screen/widgets/swith/custom_switch.dart';
import 'package:doss_doss/view/car%20details/controller/car_unavailable_controller.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class CarUnavailableScreen extends StatelessWidget {
  const CarUnavailableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Car unavailable', isBack: false),
      body: GetBuilder(
        init: CarUnavailableController(),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 50,
              bottom: 16,
            ),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: HelperFunctions.screenWidth(),
                          margin: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            border: Border.all(color: AppColors.primary),
                          ),

                          child: TableCalendar(
                            firstDay: DateTime(2020, 1, 1),
                            lastDay: DateTime(2025, 12, 31),
                            //     lastDay: DateTime.now(),
                            //    firstDay: DateTime.now(),
                            focusedDay: DateTime.now(),
                            calendarStyle: CalendarStyle(
                              selectedTextStyle: Styles.style12.copyWith(
                                color: AppColors.white,
                              ),
                              defaultTextStyle: Styles.style12.copyWith(
                                color: AppColors.primary,
                              ),
                              defaultDecoration: BoxDecoration(
                                color: AppColors.white2,
                                shape: BoxShape.rectangle,
                              ),
                              todayDecoration: BoxDecoration(
                                color: AppColors.primary,
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
                        SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.primary),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                /// Start row
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Start', style: Styles.style12),
                                    Row(
                                      children: [
                                        /// Date Container
                                        GestureDetector(
                                          onTap: () {
                                            controller.pickStartDateTime(
                                              context,
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 12,
                                              vertical: 10,
                                            ),
                                            margin: const EdgeInsets.only(
                                              right: 8,
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: AppColors.greyColor3,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Text(
                                              controller.startDate != null
                                                  ? controller.formatDate(
                                                    controller.startDate!,
                                                  )
                                                  : "Select Date",
                                              style: Styles.style12,
                                            ),
                                          ),
                                        ),

                                        /// Time Container
                                        /*   GestureDetector(
          onTap: () {
            controller.pickStartDateTime(context);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.greyColor3),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              controller.startTime != null
                  ? controller.startTime!.format(context)
                  : "Select Time",
              style: Styles.style12,
            ),
          ),
        ), */
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h),

                                /// End row
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('End', style: Styles.style12),
                                    Row(
                                      children: [
                                        /// Date Container
                                        /* GestureDetector(
          onTap: () {
            controller.pickEndDateTime(context);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.greyColor3),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              controller.endDate != null
                  ? controller.formatDate(controller.endDate!)
                  : "Select Date",
              style: Styles.style12,
            ),
          ),
        ),
 */
                                        /// Time Container
                                        GestureDetector(
                                          onTap: () {
                                            controller.pickEndDateTime(context);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 12,
                                              vertical: 10,
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: AppColors.greyColor3,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Text(
                                              controller.endTime != null
                                                  ? controller.endTime!.format(
                                                    context,
                                                  )
                                                  : "Select Time",
                                              style: Styles.style12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CustomButtons(
                    title: 'Save',
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
