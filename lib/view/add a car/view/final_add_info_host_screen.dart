import 'package:doss_doss/core/class/helper_functions.dart';
import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/add%20a%20car/view/finally_host_screen.dart';
import 'package:doss_doss/view/add%20a%20car/widgets/final_list_tile.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FinalAddInfoHostScreen extends StatelessWidget {
  const FinalAddInfoHostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: false),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Your listing', style: Styles.style26),
                    SizedBox(height: 25.h),
                    Container(
                      width: HelperFunctions.screenWidth(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.greyColor),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: FinalListtile(
                              'Add car information',
                              'Car model,description,mileage,.....',
                            ),
                          ),
                          Divider(color: AppColors.greyColor2, height: 1),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FinalListtile(
                              'Add photos',
                              'at least 3 more',
                            ),
                          ),
                          Divider(color: AppColors.greyColor2, height: 1),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FinalListtile(
                              'Register your company',
                              'add information about your company and it’s legal representative',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: CustomButtons(
                onTap:
                    () => Get.to(
                      () => FinallyHostScreen(),
                      transition: Transition.downToUp,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    ),
                title: 'Continue',
                isBlack: true,
                issmall: false,
                border: AppColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
