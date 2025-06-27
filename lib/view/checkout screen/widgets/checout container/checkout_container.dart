import 'package:doss_doss/core/class/helper_functions.dart';
import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

class CheckoutContainer extends StatelessWidget {
  final Widget widget;
  const CheckoutContainer({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: HelperFunctions.screenWidth(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.greyColor2,
                  boxShadow: [
                    AppColors.greyShadowRight,
                    AppColors.greyShadowBottom,
                  ],
                ),
                child: widget,
    );
  }
}