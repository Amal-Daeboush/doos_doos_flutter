import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/add%20a%20car/controller/trip_duration_contoller.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MaxTripScreen extends StatelessWidget {
  const MaxTripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: true),
      body: GetBuilder(
        init: TripDurationContoller(),
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
                        Text('Advance notice', style: Styles.style26),

                        SizedBox(height: 10.h),
                        Text(
                          'How much advance notice do you need before a trip starts?',
                          style: Styles.style14LightMontserrat,
                        ),
                        SizedBox(height: 30.h),
                        Column(
                          //mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:
                              controller.max.map((type) {
                                return Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: RadioListTile<String>(
                                    dense: true,
                                    contentPadding: EdgeInsets.zero,
                                    visualDensity: VisualDensity.compact,
                                    title: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        type[0].toUpperCase() +
                                            type.substring(1),
                                        style: Styles.style14LightMontserrat,
                                      ),
                                    ),
                                    value: type,
                                    groupValue: controller.maxgroup,
                                    activeColor: AppColors.primary,
                                    onChanged: controller.onChangedMax,
                                  ),
                                );
                              }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: CustomButtons(
                    onTap: controller.continueeMax,
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
