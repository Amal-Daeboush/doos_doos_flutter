import 'package:doss_doss/view/botttom%20nav%20bar/widgetx/nav_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/constant/app_colors.dart';
import '../controller/bootom_nav_controller.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
      init: BottomNavController(),
      builder: (controller) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              // صفحات التطبيق
              SafeArea(child: controller.pages[controller.page]),

              // Bottom Navigation Bar
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.colorNavBar, // خلفية شفافة قليلاً
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 8,
                        spreadRadius: 3,
                        offset: const Offset(0, -4),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildNavItem(
                        title: 'Home',
                        icon: Iconsax.home,
                        isSelected: controller.page == 0,
                        onTap: () => controller.onTap(0),
                      ),
                      buildNavItem(
                        title: 'Inbox',
                        icon: Iconsax.direct_inbox,
                        isSelected: controller.page == 1,
                        onTap: () => controller.onTap(1),
                      ),

                      buildNavItem(
                        title: 'Rental',
                        icon: Iconsax.key,
                        isSelected: controller.page == 2,
                        onTap: () => controller.onTap(2),
                      ),
                      buildNavItem(
                        title: 'Favorite',
                        icon: Iconsax.heart,
                        isSelected: controller.page == 3,
                        onTap: () => controller.onTap(3),
                      ),
                      buildNavItem(
                        title: 'Account',
                        icon: Iconsax.frame_1,
                        isSelected: controller.page == 4,
                        onTap: () => controller.onTap(4),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  
}
