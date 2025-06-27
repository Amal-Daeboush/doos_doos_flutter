import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/car%20details/view/features_screen.dart';

import 'package:doss_doss/view/car%20details/widgets/retal%20container/retal_container.dart';
import 'package:doss_doss/view/widgets/space%20item.dart';
import 'package:doss_doss/view/widgets/vertical_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class FeaturesContainer extends StatelessWidget {
    final void Function()? onTap;
  const FeaturesContainer({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return RetalContainer(
      title: 'Features',
      onTap:  
          () => Get.to(
            () => FeaturesScreen(),
            transition: Transition.downToUp,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeOut,
          ),
      button: 'View All',
      widget: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
           scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  specItem(AppImageAsset.blutooth, 'Automatic', true),
                  divider(),
                  specItem(AppImageAsset.blind, 'Blind spot warning', true),
                  divider(),
                  specItem(AppImageAsset.gps, 'GPS', true),
                ],
              ),
            ),
            SizedBox(height: 10.h,),
            Text('Included in the price',style: Styles.style12.copyWith(fontWeight: FontWeight.w800,fontSize: 13.sp),)
          ],
        ),
      ),
    );
  }
}
