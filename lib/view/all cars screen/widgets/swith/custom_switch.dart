import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

Widget CustomSwitch(bool isswitch, void Function(bool)? onChanged, isBlac) {
  return Transform.scale(
    scale: 0.7,
    child: Switch(
      value: isswitch,
      onChanged: onChanged,

      activeColor: isBlac ?AppColors.primary:
      AppColors.white,
      activeTrackColor: isBlac ? AppColors.white : AppColors.green,
      inactiveThumbColor: AppColors.white,
      inactiveTrackColor: AppColors.greyColor3,
    ),
  );
}
