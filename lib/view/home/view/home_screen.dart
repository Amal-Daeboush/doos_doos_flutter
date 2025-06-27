import 'package:doss_doss/view/all%20cars%20screen/view/all_cars_screen.dart';
import 'package:doss_doss/view/brnds_screen/view/brands_screen.dart';
import 'package:doss_doss/view/chat/view/chat_support_screen.dart';
import 'package:doss_doss/view/home/controller/home_controller.dart';
import 'package:doss_doss/view/home/widgets/appbar_home.dart';
import 'package:doss_doss/view/home/widgets/book_car_button.dart'
    show BookCarButton;
import 'package:doss_doss/view/home/widgets/custom_brand.dart';
import 'package:doss_doss/view/home/widgets/custom_car.dart';
import 'package:doss_doss/view/home/widgets/custom_column_text.dart';
import 'package:doss_doss/view/home/widgets/custom_row_text.dart';
import 'package:doss_doss/view/widgets/text%20field/custom_field_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          // 🔧 استخدم LayoutBuilder لتحديد المساحة
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight:
                      constraints
                          .maxHeight, // يجعل المحتوى يغطي الشاشة على الأقل
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 16,
                  ),
                  child: GetBuilder(
                    init: HomeController(),
                    builder: (controller) {
                      return Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // اختيار إضافي
                        children: [
                          AppbarHome(),
                          SizedBox(height: 30.h),
                          CustomColumnText(),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BookCarButton(name: 'Book a car now'),
                              BookCarButton(
                                name: 'Chat support',
                                onTap:
                                    () => Get.to(
                                      ChatSupportScreen(),
                                      transition: Transition.cupertino,
                                      duration: const Duration(
                                        milliseconds: 800,
                                      ),
                                      curve: Curves.easeInOutExpo,
                                    ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          CustomFieldSearch(),
                          SizedBox(height: 10.h),
                          CustomRowText(
                            'Browse by Brands',
                            () => Get.to(
                              BrandsScreen(brands: controller.carBrands),
                              transition: Transition.cupertino,
                              duration: const Duration(milliseconds: 800),
                              curve: Curves.easeInOutExpo,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          SizedBox(
                            height: 50,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              separatorBuilder:
                                  (context, index) => SizedBox(width: 5),
                              itemCount: controller.carBrands.length,
                              itemBuilder:
                                  (context, index) => CustomBrand(
                                    carBrand: controller.carBrands[index],
                                  ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          CustomRowText(
                            'All',
                            () => Get.to(
                              AllCarsScreen(),
                              transition: Transition.cupertino,
                              duration: const Duration(milliseconds: 800),
                              curve: Curves.easeInOutExpo,
                            ),
                          ),
                          //    SizedBox(height: 30.h),
                          ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder:
                                (context, index) => CustomCar(isInHost: false),
                            separatorBuilder:
                                (context, index) => SizedBox(height: 10.h),
                            itemCount: 3,
                          ),
                          SizedBox(height: 100.h),
                        ],
                      );
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
