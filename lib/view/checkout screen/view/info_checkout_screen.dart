import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/checkout%20screen/view/enter_number_checkout_scree.dart';
import 'package:doss_doss/view/checkout%20screen/widgets/checout%20container/checkout_container.dart';
import 'package:doss_doss/view/checkout%20screen/widgets/info_checkout.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class InfoCheckoutScreen extends StatelessWidget {
  const InfoCheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: false,onBack: () => Get.back(),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get approved to drive',
                style: Styles.style26.copyWith(color: AppColors.black3),
              ),
              SizedBox(height: 10.h),
              Text(
                'Since this is your first rental ,you’’ll need to provide us with some information before you can check out',
                style: Styles.style14LightMontserrat,
              ),
              SizedBox(height: 10.h),
              CheckoutContainer(
                widget: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      InfoCheckout(
                        Icons.phone,
                        'Mobile number',
                        'We’ll send you a verification code to help secure your account',
                      ),
                      SizedBox(height: 10.h),
                      InfoCheckout(
                        Iconsax.personalcard,
                        'Verify your license',
                        'We’ll ask for your driver’s license and a photo of yourself .we’ll use these photos to verify your license.',
                      ),
                      SizedBox(height: 10.h),
                      InfoCheckout(
                        Iconsax.cards,
                        'Payment method',
                        'You won’t be charged until you confirm your car rental',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Your information is stored securely. Providers will only see your name and date of birth after you confirm your booking. The rest remains private.',
                style: Styles.style12,
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: CustomButtons(  onTap:
                      () => Get.to(
                        () => EnterNumberCheckoutScreen(),
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
            ],
          ),
        ),
      ),
    );
  }
}
