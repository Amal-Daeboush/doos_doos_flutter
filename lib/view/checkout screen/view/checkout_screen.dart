import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/view/checkout%20screen/view/info_checkout_screen.dart' show InfoCheckoutScreen;
import 'package:doss_doss/view/checkout%20screen/widgets/checout%20container/currency_conversion_container.dart';
import 'package:doss_doss/view/checkout%20screen/widgets/checout%20container/price_checkout_container.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/custom_car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Checkout', isBack: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomCarTour(),
              SizedBox(height: 20.h),
              PriceCheckoutContainer(),
              SizedBox(height: 20.h),
              CurrencyConversionContainer(),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: CustomButtons(
                  onTap:
                      () => Get.to(
                        () => InfoCheckoutScreen(),
                        transition: Transition.downToUp,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      ),

                  title: 'Continue',
                  isBlack: true,
                  issmall: false,
                  border: AppColors.primary,
                ),
              ),
              //     CurrencyConversionScreen()
            ],
          ),
        ),
      ),
    );
  }
}
