import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/car%20details/widgets/hosted/custom_divider.dart';
import 'package:doss_doss/view/car%20details/widgets/hosted/hosted_info_column.dart';
import 'package:doss_doss/view/car%20details/widgets/retal%20container/review_card.dart';
import 'package:doss_doss/view/home/widgets/custom_car.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HostedScreen extends StatelessWidget {
  const HostedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HostedInfoColumn(),
              SizedBox(height: 10.h),
              Text(
                'Verified info',
                style: Styles.style20.copyWith(
                  color: AppColors.black2,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Phone number', style: Styles.style14LightMontserrat),
                  Icon(
                    Icons.verified_sharp,
                    size: 20,
                    color: AppColors.primary,
                  ),
                ],
              ),
              CustomDivider(),
              Text(
                'Amir’s Vehicle',
                style: Styles.style20.copyWith(
                  color: AppColors.black2,
                  fontWeight: FontWeight.w700,
                ),
              ),
              CustomCar(isInHost: false,),
              CustomDivider(),
              Text(
                'Location',
                style: Styles.style20.copyWith(
                  color: AppColors.black2,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  SizedBox(width: 5.w),
                  Text(
                    'UAE,Sharjah',
                    style: Styles.style14LightMontserrat.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              CustomDivider(),
              Text(
                'Reviews from Guests',
                style: Styles.style20.copyWith(
                  color: AppColors.black2,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.star, color: AppColors.yellow),
                  SizedBox(width: 10.w),
                  Text('5.0       (20 Reviews)', style: Styles.style12),
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    3,
                    (index) => ReviewCard(isfavourteIcom: false,isInHost: false,),
                  ),
                ),
              ),
              CustomDivider(),
              Text(
                'Reviews from Host',
                style: Styles.style20.copyWith(
                  color: AppColors.black2,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.star, color: AppColors.yellow),
                  SizedBox(width: 10.w),
                  Text('5.0       (8 Reviews)', style: Styles.style12),
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    3,
                    (index) => ReviewCard(isfavourteIcom: false,isInHost: false,),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
