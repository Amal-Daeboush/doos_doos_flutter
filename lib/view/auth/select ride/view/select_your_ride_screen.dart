import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/app_sizes.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/auth/select%20ride/controller/select_your_ride_controller.dart';
import 'package:doss_doss/view/botttom%20nav%20bar/view/bottom_nav_bar_screen.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/map%20container/map_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SelectYourRideScreen extends StatelessWidget {
  const SelectYourRideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SelectYourRideController controller = Get.put(
      SelectYourRideController(),
    );

    return Scaffold(
      appBar: CustomAppBar(
        isBack: true,
        onBack: () {},
        title: 'Find your ride',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: AppSizes.lg),
                Text(
                  'Select address',
                  style: Styles.style18.copyWith(fontWeight: FontWeight.w700),
                ),
                SizedBox(height: AppSizes.md),
                MapContainer(),
                SizedBox(height: AppSizes.md),
                Text(
                  'Enter Price',
                  style: Styles.style18.copyWith(fontWeight: FontWeight.w700),
                ),
                Obx(
                  () => SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 7,
                        disabledThumbRadius: 7,
                        elevation: 2,
                      ),
                      thumbColor: Colors.black,
                      overlayColor: Colors.transparent,
                      activeTrackColor: Colors.black,
                      inactiveTrackColor: Colors.grey.shade300,
                      trackHeight: 2,
                    ),
                    child: RangeSlider(
                      values: controller.selectedRange.value,
                      min: 0,
                      max: 1000,
                      labels: RangeLabels(
                        '${controller.minPrice}',
                        '${controller.maxPrice}',
                      ),
                      onChanged: (RangeValues values) {
                        controller.updateRange(values);
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 45.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Obx(
                          () => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              controller.selectedRange.value.start == 0
                                  ? 'Min Price'
                                  : '${controller.minPrice}',
                              style: Styles.style14Light.copyWith(
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Container(
                        height: 45.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Obx(
                          () => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              // عرض النص الثابت قبل تحريك السلايدر
                              controller.selectedRange.value.end == 1000
                                  ? 'Max Price' // نص ثابت قبل التحريك
                                  : '${controller.maxPrice}', // القيمة بعد التحريك
                              style: Styles.style14Light.copyWith(
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.xl),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CustomButtons(
                    onTap:
                        () => Get.off(
                          BottomNavBarScreen(),
                          transition: Transition.downToUp,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeOut,
                        ),
                    title: 'Find available cars',
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
    );
  }
}
