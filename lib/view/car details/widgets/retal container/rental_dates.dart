import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/car%20details/view/rental_dates_screen.dart';

import 'package:doss_doss/view/car%20details/widgets/retal%20container/retal_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RentalDates extends StatelessWidget {
    final void Function()? onTap;
  const RentalDates({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return RetalContainer(
  onTap:
          () => Get.to(
            () => RentalDatesScreen(),
            transition: Transition.downToUp,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeOut,
          ),
      title: 'Rental Dates',
      button: 'Edit',
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  'Sun,26 jan',
                  style: Styles.style14LightMontserrat.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text('11 Am',   style: Styles.style12.copyWith(
                    fontWeight: FontWeight.w400,
                  ),),
              ],
            ),
          ),
          Expanded(child: Image.asset(AppImageAsset.vec,color: AppColors.primary,)),
              Expanded(
                child: Column(
                            children: [
                Text(
                  'Tue,28 jan',
                  style: Styles.style14LightMontserrat.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text('9 Am',   style: Styles.style12.copyWith(
                    fontWeight: FontWeight.w400,
                  ),),
                            ],
                          ),
              ),
        ],
      ),
    );
  }
}
