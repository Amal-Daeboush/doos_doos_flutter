import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/car%20details/widgets/bascics%20row/basics_row.dart';
import 'package:doss_doss/view/car%20details/widgets/custom%20spaces/custom_spaces.dart';
import 'package:doss_doss/view/car%20details/widgets/rate_row.dart/rate_row.dart';
import 'package:doss_doss/view/checkout%20screen/view/checkout_screen.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/custom_car.dart' show CustomCarTour;
import 'package:doss_doss/view/widgets/icons/custom_appbar_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isBack: true,
        title: 'Car Details',
        trailing: CustomAppBarIcon(() {}, Iconsax.heart, false),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
            child: Text(
              'GLA 250 SUV',
              style: Styles.style20.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          RateRow(),
          SizedBox(height: 10),
      
      CustomCarTour(),

          SizedBox(height: 10),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r),
                ),
                color: AppColors.greyColor2,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 20,
                  bottom: 10
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Description', style: Styles.style22),
                      SizedBox(height: 10.h),
                      Text(
                        'The GLA 250 SUV combines luxury, performance, and practicality in a sleek design. With a turbocharged engine, smooth acceleration, and advanced tech, it offers both comfort and adventure.',
                        style: Styles.style14LightMontserrat,
                      ),
                      SizedBox(height: 25.h),
                      Text('Specs', style: Styles.style22),
                      SizedBox(height: 10.h),
                      SizedBox(
                        height: 60.h,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            customSpaces('Power', ' 221 hp '),
                            customSpaces('Max Speed', '209 km/h'),
                            customSpaces('Acceleration', '0-100 km/h in ~6.6s'),
                          ],
                        ),
                      ),
                      SizedBox(height: 25.h),
                      Text('Car Basics', style: Styles.style22),
                      SizedBox(height: 10.h),
                      BascisRow(),
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$280 Day',
                            style: Styles.style20.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 26.sp,
                            ),
                          ),
                          CustomButtons(
                            onTap:
                                () => Get.to(
                                  () => CheckoutScreen(),
                                  transition: Transition.downToUp,
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeOut,
                                ),
                            title: 'Request',
                            isBlack: true,
                            issmall: true,
                            border: AppColors.primary,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
