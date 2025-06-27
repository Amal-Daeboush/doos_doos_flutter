import 'package:doss_doss/core/class/helper_functions.dart';
import 'package:doss_doss/core/constant/app_colors.dart';

import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  final String title;
  final Widget widget;
 final void Function()? onTap;
  const BottomContainer({super.key, required this.title, required this.widget, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: HelperFunctions.screenWidth(),

      decoration: BoxDecoration(
        border: Border.all(color: AppColors.greyColor2),
        color: AppColors.white,
        boxShadow: [AppColors.whiteShadowtop],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            widget,
         //   Text('Clear', style: Styles.style14LightMontserrat),
            CustomButtons(
              onTap:onTap ,
              title: title,
              isBlack: true,
              issmall: true,
              border: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}
