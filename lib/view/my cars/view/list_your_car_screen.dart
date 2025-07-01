import 'package:doss_doss/core/constant/app_colors.dart' show AppColors;
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/add%20a%20car/view/first_tell_about_car_screen.dart';
import 'package:doss_doss/view/botttom%20nav%20bar/view/bottom_nav_bar_screen.dart';
import 'package:doss_doss/view/home/controller/host_home_controller.dart';
import 'package:doss_doss/view/home/widgets/book_car_button.dart';
import 'package:doss_doss/view/home/widgets/car%20card/custom_car.dart';
import 'package:doss_doss/view/home/widgets/host%20home/custom_filter_bottom_sheet.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/text%20field/custom_field_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ListYourCarScreen extends StatelessWidget {
  const ListYourCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HostHomeController(),
      builder: (controller) {
        return Scaffold(
          appBar:CustomAppBar(title: 'Cars', isBack: false,onBack: () => Get.off(
                    () => BottomNavBarScreen(),
                    transition: Transition.downToUp,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  ),trailing:  GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    useSafeArea: true,
                    useRootNavigator: true,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    builder: (context) {
                      return CustomFilterBottomSheet(
                        filters: controller.filter,
                        select: controller.selectfilter,
                        onFilterSelected: (String filter) {
                          controller.selectFilter(filter);
                          Navigator.pop(context);
                        },
                      );
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(70.r),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            controller.selectfilter,
                            style: Styles.style12.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Icon(
                            Icons.keyboard_arrow_down_sharp,
                            size: 15.sp,
                            color: AppColors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),),
        /*   appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.5,
            shadowColor: Colors.white,
            title: Text('Cars', style: Styles.style30),
            bottomOpacity: 12,
            actions: [
             
            ],
          ), */
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                CustomFieldSearch(hint: 'Search'),
                SizedBox(height: 16.h),
                Expanded(
                  child: ListView(
                    children: [
                      CustomCar(isInHost: true),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Center(child: BookCarButton(name: '\+ Add Car',isCormorantFont:false,onTap: () =>  Get.to(
      () => TellAboutCarScreen(),
      transition: Transition.downToUp,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeOut,
    ) ,)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
