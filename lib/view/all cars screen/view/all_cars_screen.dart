import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/all%20cars%20screen/controller/all_cars_controller.dart';
import 'package:doss_doss/view/all%20cars%20screen/widgets/filter%20button%20list/filter_button_list.dart';
import 'package:doss_doss/view/all%20cars%20screen/widgets/swith/custom_switch.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/icons/custom_appbar_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../home/widgets/custom_car.dart';

class AllCarsScreen extends StatelessWidget {
  const AllCarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> filterNames = [
      'Filter',
      'Recommended',
      'New models',
      'Nearby',
    ];

    return Scaffold(
      appBar: CustomAppBar(
               isBack: true,
        title: 'All Cars',
        trailing: CustomAppBarIcon(() {}, Iconsax.search_normal_1, false),
      ),
      body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
        child: GetBuilder(
          init: AllCarsController(),
          builder: (controller) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FilterButtonList(
                  filterNames: filterNames,
                  selectedIndex: controller.selectedIndex,
                  onTap: controller.selectButton,
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Include a professional driver?',
                      style: Styles.style20.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    CustomSwitch(controller.isSwitched, controller.swithed,false),
                  
                  ],
                ),
                SizedBox(height: 10.h),
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.only(top: 0.h), 
                      itemBuilder: (context, index) => CustomCar(isInHost: false,),
                      separatorBuilder: (context, index) => SizedBox(height: 10.h),
                      itemCount: 3,
                    ),

                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
