import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/model/car_model.dart';
import 'package:doss_doss/view/car%20details/view/car_details_screen.dart';
import 'package:doss_doss/view/car%20details/view/rental_details.dart';
import 'package:doss_doss/view/edit%20car/view/edit_car_screen.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/space%20item.dart';
import 'package:doss_doss/view/widgets/vertical_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomCar extends StatelessWidget {
  final bool isInHost;
  final CarModel? car;
  const CustomCar({super.key, required this.isInHost, this.car});

  @override
  Widget build(BuildContext context) {
    //  final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(top: 50.h),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topRight,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: AppColors.greyColor2,
            ),
            child: Padding(
              padding: EdgeInsets.all(12.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  Text(
                    car != null ? '${car!.model}' : 'GLA 250 SUV',
                    style: Styles.style20.copyWith(fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 10.h),
                  Text(     car != null ? '${'\$'}${car!.price} Day' : '\$280 Day', style: Styles.style20),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        specItem(AppImageAsset.jam, '221 hp', true),
                        divider(),
                        specItem(AppImageAsset.bxs, 'Automatic', true),
                        divider(),
                        specItem(AppImageAsset.chair, '5 Seats', true),
                      ],
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButtons(
                        onTap:
                            isInHost
                                ? () => Get.to(
                                  () => EditCarScreen(),
                                  transition: Transition.downToUp,
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeOut,
                                )
                                : () => Get.to(
                                  () => RentalDetails(),
                                  transition: Transition.downToUp,
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeOut,
                                ),
                        border: AppColors.primary,
                        title: isInHost ? 'Edit' : 'Rent Now',
                        isBlack: true,
                        issmall: true,
                      ),
                      SizedBox(width: 10.w),
                      CustomButtons(
                        onTap:
                            () => Get.to(
                              () => CarDetailsScreen(
                                isMyCar: isInHost ? true : false,
                              ),
                              transition: Transition.downToUp,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeOut,
                            ),
                        border: AppColors.primary,
                        title: 'Details',
                        isBlack: false,
                        issmall: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            top: -35,
            right: -10,
            child: Image.asset(
              AppImageAsset.car,
              //width: MediaQuery.of(context).size.width * 0.5, // أعرض شوي
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
