import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/checkout%20screen/view/add_payment_info_screen.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class PaymentMethodScreen extends StatelessWidget {
  final bool isFromProfile;
  const PaymentMethodScreen({super.key, required this.isFromProfile});

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
              Text(
                'Payment method',
                style: Styles.style26.copyWith(color: AppColors.black3),
              ),
              SizedBox(height: 10.h),
              Text(
                'Add a defult payment method for booking .you won’t be charged until you book',
                style: Styles.style14LightMontserrat,
              ),
              SizedBox(height: 80.h),
              Center(child: Icon(Iconsax.wallet, size: 100.sp)),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Icon(Iconsax.add_circle, size: 20)),
                     SizedBox(width: 10.h),
                  Text(
                    'Add payment method',
                    style: Styles.style12.copyWith(fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              SizedBox(height: 70.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: CustomButtons(
                     onTap: isFromProfile?
                      () => Get.off(
                        () => AddPaymentInfoScreen(isFromProfile: isFromProfile,),
                        transition: Transition.downToUp,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      ):  () => Get.to(
                        () => AddPaymentInfoScreen(isFromProfile: isFromProfile,),
                        transition: Transition.downToUp,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      ),
                  title: 'Sava and Continue',
                  isBlack: false,
                  issmall: false,
                  border: AppColors.greyColor2,
                  color: AppColors.greyColor2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
