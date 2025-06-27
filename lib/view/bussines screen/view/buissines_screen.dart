import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/bussines%20screen/controller/business_controller.dart';
import 'package:doss_doss/view/bussines%20screen/widgets/section/earing_section.dart';
import 'package:doss_doss/view/bussines%20screen/widgets/section/reviews_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BusinessController());
    final dropdownKey = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        shadowColor: Colors.white,
        bottomOpacity: 12,
        title: Text('Business', style: Styles.style26),
        actions: [
          Obx(
            () => Padding(
              padding: const EdgeInsets.only(right: 12, top: 8),
              child: GestureDetector(
                key: dropdownKey,
                onTap: () => controller.toggleDropdown(context, dropdownKey),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Text(
                        controller.selectedOption.value,
                        style: Styles.style12.copyWith(color: AppColors.white),
                      ),
                      SizedBox(width: 5,),
                      const Icon(Icons.keyboard_arrow_down,color: AppColors.white),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Obx(() {
        if (controller.selectedOption.value == 'Earning') {
          return const EaringSection();
        } else {
          return const ReviewsSection();
        }
      }),
    );
  }
}
