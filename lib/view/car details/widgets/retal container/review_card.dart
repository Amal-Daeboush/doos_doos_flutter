import 'package:doss_doss/core/class/helper_functions.dart';
import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class ReviewCard extends StatelessWidget {
  final bool isfavourteIcom;
  final bool isInHost;
  final void Function()? replayFunc;
  const ReviewCard({
    super.key,
    required this.isfavourteIcom,
    required this.isInHost,
    this.replayFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(margin: EdgeInsets.symmetric(horizontal: 5,vertical: 7), //
        width: isInHost ? HelperFunctions.screenWidth() : 270.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.greyColor2,
          boxShadow: [AppColors.greyShadowRight, AppColors.whiteShadowtop],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: AppColors.black2,
                  radius: isInHost ? 20.r : 25.r,
                ),
                title: Row(
                  children: List.generate(
                    5,
                    (index) =>
                        Icon(Icons.star, color: AppColors.yellow, size: 15.sp),
                  ),
                ),
                trailing:
                    isfavourteIcom
                        ? Icon(
                          Iconsax.heart,
                          size: 18.sp,
                          color: AppColors.primary,
                        )
                        : null,
                subtitle: Row(
                  children: [
                    Text(
                      'Nour Ali',
                      style:
                          isInHost
                              ? Styles.style10.copyWith(
                                fontFamily: 'Montserrat',
                              )
                              : Styles.style14LightMontserrat.copyWith(
                                fontFamily: 'Montserrat',
                              ),
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      'jan 20 ,2025',
                      style: Styles.style10.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: isInHost ? 10.sp : 12.sp,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  'I recently rented this car, and it was an amazing experience! The vehicle was in perfect condition—clean, well-maintained, and drove smoothly. The host was super helpful, responsive, and made the entire process seamless. From pickup to drop-off, everything was hassle-free. ',
                  style: Styles.style10.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 10.sp,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
              SizedBox(height: 10),
              isInHost
                  ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButtons(
                          onTap: replayFunc,
                          title: 'Replay',
                          isBlack: false,
                          issmall: true,
                          border: AppColors.primary,
                        ),
                        SizedBox(width: 100),
                      ],
                    ),
                  )
                  : TextButton(
                    onPressed: () {},
                    child: Text(
                      'Read more',
                      style: Styles.style10.copyWith(
                        fontWeight: FontWeight.w900,
                        color: AppColors.primary,
                        fontSize: 14.sp,
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
