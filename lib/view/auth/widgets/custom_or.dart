import 'package:flutter/material.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/constant/styles.dart';

Widget CustomOR() {
  return Row(
    children: [
      const Expanded(child: Divider(color: AppColors.greyColor3, thickness: 1)),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Text(
          'OR',
          style: Styles.style16.copyWith(color: AppColors.greyColor3),
        ),
      ),
      const Expanded(child: Divider(color: AppColors.greyColor3, thickness: 1)),
    ],
  );
}
