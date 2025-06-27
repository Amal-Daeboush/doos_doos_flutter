import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/on%20boarding/widgets/custom_column.dart';
import 'package:doss_doss/view/upgrade%20screen/widgets/container_upgrade.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpgradeScreen extends StatelessWidget {
  const UpgradeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Upgrade to Premium Host', style: Styles.style26),
              SizedBox(height: 8.h),
              Text(
                'Unlock More Opportunities & Maximize Your Earnings!',
                style: Styles.style14LightMontserrat,
              ),
              SizedBox(height: 16.h),
              Text(
                'Why Go Premium?',
                style: Styles.style22.copyWith(fontWeight: FontWeight.w700),
              ),
              CustomColumn(
                title: 'List Multiple Cars',
                subTitle:
                    'Add more than one car to your profile and expand your rental business.',
                isCheck: false,
              ),
              CustomColumn(
                title: 'Higher Visibility',
                subTitle:
                    'Get priority placement in search results to attract more renters.',
                isCheck: false,
              ),
              CustomColumn(
                title: 'Premium Support',
                subTitle:
                    'Get access to priority customer support for faster assistance.',
                isCheck: false,
              ),
              SizedBox(height: 10.h),

              Text('Upgrade to Premium Host', style: Styles.style26),

              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: ContainerUpgrade(
                      isblack: false,
                      title: 'Standard Host',
                      price: 0,
                      feuters: 'List one car for free.',
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: ContainerUpgrade(
                      isblack: true,
                      title: 'Premium Host',
                      price: 20,
                      feuters: 'Unlock unlimited listings and premium perks.',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomButtons(title: 'Upgrade Now', isBlack: true, issmall: false, border: AppColors.primary),
              )
            ],
          ),
        ),
      ),
    );
  }
}
