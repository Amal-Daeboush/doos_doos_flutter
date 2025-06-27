import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

Widget divider() {
    return SizedBox(
      height: 30,
      child: VerticalDivider(
        color: AppColors.primary.withOpacity(0.26),
        thickness: 1,
        width: 20,
      ),
    );
  }

