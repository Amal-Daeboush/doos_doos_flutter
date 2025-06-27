import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

Widget CustomDivider() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
    child: Divider(height: 1, color: AppColors.greyColor6),
  );
}
